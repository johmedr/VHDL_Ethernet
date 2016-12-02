----------------------------------------------------------------------------------
-- Company: INSA Toulouse 
-- Engineer: Khazri Ines - Monneret Vivien - Medrano Johan 
-- 
-- Create Date:    09:51:05 10/26/2016 
-- Design Name: 
-- Module Name:    Core - Behavioral 
-- Project Name: Ethernet 10-100M controller
-- Target Devices: Spartan 101
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Core is
    Port ( 
    -- Gere par le process Receiver
           RBYTEP : out  STD_LOGIC;
           RCLEANP : out  STD_LOGIC;
           RCVNGP : out  STD_LOGIC;
           RDATAO : out  STD_LOGIC_VECTOR (7 downto 0);
           RDATAI : in STD_LOGIC_VECTOR (7 downto 0);
           RDONEP : out  STD_LOGIC;
           RENABP : in  STD_LOGIC;
           RSMATIP : out  STD_LOGIC;
           RSTARTP : out  STD_LOGIC;
    -- Gere par le process Transmitter
           TABORTP : in  STD_LOGIC;
           TAVAILP : in  STD_LOGIC;
           TDATAO : out STD_LOGIC_VECTOR (7 downto 0);
           TDATAI : in  STD_LOGIC_VECTOR (7 downto 0);
           TDONEP : out  STD_LOGIC;
           TLASTP : in  STD_LOGIC;
           TREADDP : out  STD_LOGIC;
           TRNSMTP : out  STD_LOGIC;
           TSTARTP : out  STD_LOGIC;
           TSOCOLP : out  STD_LOGIC;
    -- Commun 
          -- NOADDRI : in  STD_LOGIC_VECTOR (47 downto 0);

           CLKDIV8_UP : out  STD_LOGIC;
           CLK10I : in  STD_LOGIC;
           RESETN : in  STD_LOGIC);  
end Core;


architecture Behavioral of Core is
    -- Signaux du diviseur d'horloge
    signal CLKDIV8 : STD_LOGIC := '0';         -- Horloge divise par 8 
    signal CLKDIV_UP : STD_LOGIC := '0';       -- HIGH sur front montant de CLKDIV8

    -- Adresse MAC de l'hote
    constant HOST_ADDRESS : STD_LOGIC_VECTOR (47 downto 0) := X"123456123456"; 

    -- Signaux d'etat pour le Receiver
    signal S_RSMATIP : STD_LOGIC :='0';
    signal S_RCVNGP : STD_LOGIC := '0'; 

    -- Jeton envoi/reception, mis  un par l'emetteur/le recepteur. 
    signal SENDING : STD_LOGIC := '0'; 
    signal RECEIVING : STD_LOGIC := '0'; 

    -- Requete de synchronisation diviseur d'horloge
    signal T_REQUEST_CK_SYNC : STD_LOGIC := '0'; 
    signal R_REQUEST_CK_SYNC : STD_LOGIC := '0'; 

    -- Signal de collision detectee, gere par le detecteur de collision
    signal T_ALLOWED : STD_LOGIC := '1'; 
    signal R_ALLOWED : STD_LOGIC := '1'; 

    
begin

------------------------------------------------------------------------
--                     DIVISEUR D'HORLOGE                             --
------------------------------------------------------------------------
    CLKDIV : process
        
        variable clk_count : INTEGER RANGE 0 TO 4 := 0;        -- Compte les tics d'horloge (CLK10I) 
        variable CLKDIV_RST : STD_LOGIC;                  -- HIGH si une demande de reset est active
    begin
        -- Synchronisation sur front montant de CLK10I
        wait until CLK10I'event and CLK10I='1'; 
        
        if RESETN = '0' then 
            CLKDIV_RST := '0'; 
            clk_count := 0; 
            CLKDIV8 <= '0'; 
            CLKDIV_UP <= '0'; 
        else
            -- Rapatriement des demande de synchronisation
            CLKDIV_RST := T_REQUEST_CK_SYNC xor R_REQUEST_CK_SYNC;
            
            CLKDIV_UP <= '0'; 
            
            -- Synchronisation de l'horloge
            if CLKDIV_RST = '1' then  
                CLKDIV8 <= '0';          	-- Mise  O de l'horloge (on veut commencer sur front montant) 
                clk_count := 0;          	-- Reset du compteur de tics
            end if; 
            
            -- Front montant si clk_count = 0 et que l'on tait  l'tat bas
            if clk_count = 0 and CLKDIV8 = '0' then
                CLKDIV_UP <= '1';
            end if;

        -- Fonctionnement normal	
            clk_count := clk_count + 1;	-- Incrementation du compteur de tics 
            if clk_count = 4 then 			-- Si l'horloge etait a 0, elle va passer  1 => front montant 
                CLKDIV8 <= not CLKDIV8; 	-- Toggle
                clk_count := 0; 				-- Reset du compteur 
            end if; 
                    
            CLKDIV8_UP <= CLKDIV_UP;
        end if; 
    end process CLKDIV; 
------------------------ end DIVISEUR HORLOGE --------------------------
	
------------------------------------------------------------------------
--                       	PARTIE RECEPTION                           --
------------------------------------------------------------------------
	-- Processus de reception
	Receiver : process
		variable ADDRESS_BUFFER : STD_LOGIC_VECTOR (47 downto 0);     -- Buffer de stockage pour l'adresse destinataire
		variable RCOUNT : integer range 6 downto 0 := 0;                   -- Compteur pour reception de l'adresse destinataire
		variable PAUSE : STD_LOGIC := '0';                            -- Etat pause du recepteur
		variable ALLOWED_RESET : STD_LOGIC := '1';                    -- Autorisation de resynchroniser l'horloge (LOW quand resync ncessaire) 
	begin
-- 		wait until CLK10I'event and CLK10I='1'; 	      -- CLK10I Sync
		wait until CLK10I'event and CLK10I='1' and RENABP='1'; 	      -- CLK10I Sync
		
		RCLEANP <= '0';
		RBYTEP <= '0'; 
		RDONEP <= '0'; 
		R_REQUEST_CK_SYNC <= '0';
		ALLOWED_RESET := '1';
		RSTARTP <= '0';
		ALLOWED_RESET := '1';
		if CLKDIV_UP = '1' then 
			RDATAO <= X"00";
		end if; 
		
		if RESETN='0' then
			ADDRESS_BUFFER := X"000000000000"; 
			RCOUNT := 0; 
			PAUSE := '0'; 
			S_RCVNGP <='0';
			S_RSMATIP <='0';
			RECEIVING <= '0'; 
		else
		
            
            -- Activation du receiver
            if RENABP = '1' and R_ALLOWED = '1' then  

                -- Attente du SFD 
                if S_RCVNGP='0' and S_RSMATIP='0' and RDATAI=X"AB" then -- Start Frame Delimiter
                    
                    if PAUSE = '1' then
                        if CLKDIV_UP = '1' then
                            PAUSE := '0';
                            ALLOWED_RESET := '0';
                        end if; 
                    end if; 
                    
                    if PAUSE = '0' then
                    
								if ALLOWED_RESET = '1' then
                            R_REQUEST_CK_SYNC <= '1';                  -- Sync clock divis 8 fois
                        end if;
                        
                        S_RCVNGP <= '1';	                           -- Receiving pulse
                        ADDRESS_BUFFER := (others=>'0');             -- Reset buffer adresse
                        RCOUNT := 0; 
                        RSTARTP <= '1'; 
                        RECEIVING <= '1'; 
                        S_RSMATIP <= '0';

                    end if;
                
                -- Rception dbut, controle adresse dest.
                elsif S_RCVNGP = '1' and S_RSMATIP='0' then 
                        
                        
                        -- Reception de l'adresse destinataire
                        if RCOUNT < 6 then
                            -- Synchronisation sur front montant de CLKDIV
                            if CLKDIV_UP = '1' then
                                ADDRESS_BUFFER((47 - (RCOUNT * 8)) downto (48 - ((RCOUNT+1) * 8))) :=  RDATAI(7 downto 0); 
                                RCOUNT := RCOUNT + 1; 
                            end if; 
                            
                        -- Reception de l'adresse termine, comparaison
                        else
                            -- Comparaison de l'adresse recu avec celle de l'hote
                            if  ADDRESS_BUFFER /= HOST_ADDRESS then
                            
                                -- Adresse invalide, pulse de reset du buffer host
                                RCLEANP <= '1';
                                
                                -- Arret de la reception 
                                S_RCVNGP <= '0';
                                S_RSMATIP <= '0';
                                RECEIVING <= '0'; 
                            else 
                                -- Adresse valide, suite lecture
                                S_RSMATIP <= '1'; 
                            end if;
                        end if; 

                -- Adresse destinataire valide, suite de la lecture
                elsif S_RCVNGP = '1' and S_RSMATIP = '1' then 
					 
                    -- Synchronisation du front montant CLKDIV8
                    if CLKDIV_UP = '1' then
                    
                        -- Test du End Frame Delimiter
                        if RDATAI=X"AB" then
                            -- Fin de la reception 
                            S_RCVNGP <= '0';
                            S_RSMATIP <= '0';
                            
                            -- Pulse reception terminee
                            RDONEP <= '1';
                            
                            -- Mise en pause (attente de 80ns, pour ne pas confondre EFD et SFD) 
                            PAUSE := '1'; 
                            
                            -- On est plus en reception 
                            RECEIVING <= '0'; 
                        else 
                            -- On est pas  la fin de la trame
                            -- On recopie les donnees lues sur vers l'hote
                            RDATAO <= RDATAI;
                            
                            -- Pulse octet lu
                            RBYTEP <= '1'; 
                        end if; 
                    end if;
                end if;
         end if;
		end if; 
    end process Receiver; 

    RSMATIP <= S_RSMATIP; 
    RCVNGP <= S_RCVNGP; 
--------------------------- end RECEPTION --------------------------------

-------------------------------------------------------------------------
--                       	PARTIE EMISSION                            --
-------------------------------------------------------------------------
-- Processus de transmittion
    Transmitter : process
        variable ADRCOUNT : integer range 6 downto 0 := 0;    -- Compteur de la taille de l'adresse
        variable COUNT4 : integer range 6 downto 0 := 0;	  -- Compteur d'envoi message erreur (4bytes 10101010) 
        variable DADR_SENT : STD_LOGIC := '0';                -- Etat adresse destinataire envoye 
        variable TADR_SENT : STD_LOGIC := '0';                -- Etat adresse hote envoye
        variable SENDING_FAIL : STD_LOGIC := '0'; 
        variable LAST_DATA : STD_LOGIC := '0'; 
        variable ALLOWED_RESET : STD_LOGIC := '1';                    -- Autorisation de resynchroniser l'horloge (LOW quand resync ncessaire) 
        variable PAUSE : STD_LOGIC := '0'; 
    begin
        -- Synchronisation sur CLK10I 
        wait until CLK10I'event and CLK10I='1'; 	        

        TREADDP <= '0'; 
        T_REQUEST_CK_SYNC <= '0'; 
        TSOCOLP <= '0'; 
        TSTARTP <= '0'; 
        TDONEP <= '0'; 
        ALLOWED_RESET := '1'; 
		  if CLKDIV_UP = '1' then 
				TDATAO <= X"00"; 
			end if; 
		  
        if RESETN='0' then
            ADRCOUNT := 0; 
            COUNT4 := 0; 
            DADR_SENT := '0';
            TADR_SENT := '0';
            SENDING_FAIL := '0'; 
            LAST_DATA := '0'; 
            PAUSE := '0'; 
		else
            
            
            -- [TODO] Checker les collision + commenter
            if T_ALLOWED = '0' and SENDING_FAIL = '0' then  
                SENDING_FAIL := '1'; 
                TRNSMTP <= '0'; 
                TDATAO <= X"00";
                SENDING <= '0'; 
        
            elsif TAVAILP = '1' and SENDING = '0' and T_ALLOWED = '1' then 
                if PAUSE = '1' then
                    if CLKDIV_UP = '1' then
                        PAUSE := '0';
                        ALLOWED_RESET := '0';
                    end if; 
                end if; 
                if PAUSE = '0' then
                    if ALLOWED_RESET = '1' then
                        T_REQUEST_CK_SYNC <= '1';                  -- Sync clock divis 8 fois
                    end if;
                TDATAO <= X"AB";        -- Envoi du SFD
                SENDING <= '1';              -- Etat envoi
                TRNSMTP <= '1'; 			 		-- Pulse transmission 
                TSTARTP <= '1'; 			 		-- Dbut transmission
                ADRCOUNT := 0;               -- Reset compteur adresse
                DADR_SENT := '0';            -- Adresse destinataire non envoye
                COUNT4 := 0;                 -- Reset compteur erreur
                end if; 
            
            -- Etat d'envoi 
            elsif SENDING = '1' and T_ALLOWED = '1' then 
                
                -- TABORTP actuellement recu, ou precedemment recu et donc comptage commence
                if (TABORTP = '1' or COUNT4 > 0) then
                        -- /!\ Offset de 1 sur COUNT4
                
                        if COUNT4 = 0 then 
                            COUNT4 := 1;            -- On met count  1 pour rerentrer forcment ici, meme si on a pas de 
                                                    -- front montant sur CLKDIV_UP (on ne veut pas perdre l'info du TABORTP) 
                        end if;                     -- /!\ Rajoute d'un offset de 1 sur la variable COUNT4
                        
                        -- On demarre l'envoi 4 bytes AA sur front montant de CLKDIV_UP
                        if CLKDIV_UP = '1' then 
                            TDATAO <= X"AA";           -- Envoi byte 10101010
                            COUNT4 := COUNT4 + 1;      
                        end if; 
                        
                        -- Fin de la procedure d'abandon
                        if COUNT4 = 6 then         -- Au debut du 5 eme front montant, on reset les flags : 
                            SENDING <= '0';        -- On est plus en envoi
                            TRNSMTP <= '0';        
                            COUNT4 := 0;           -- Reset du compteur
                            TSOCOLP <= '1';        -- Pulse collision 
                            TDATAO <= X"00";       -- Reset bus envoi
                        end if;
                

                -- Fonctionnement nominal
                else 
                    -- Synchronisation sur CLKDIV8 
                    if CLKDIV_UP = '1' then 
                        
                        -- aucune adresse envoyee
                        if DADR_SENT = '0' and TADR_SENT = '0' then
                            -- Envoi adresse destinataire 
                            if ADRCOUNT < 6 then
                                TDATAO <= TDATAI;                -- On fait suivre l'adresse destinataire vers le reseau
                                TREADDP <= '1';                  -- Pulse lecture
                                ADRCOUNT := ADRCOUNT + 1; 
                            end if;
                            
                            if ADRCOUNT = 6 then 
                                ADRCOUNT := 0;                   -- Reset compteur adresse
                                DADR_SENT := '1';                -- Adresse destinataire envoyee
                            end if; 
                        
                        -- adresse destinataire envoyee
                        elsif DADR_SENT = '1' and TADR_SENT = '0' then 
                        
                            -- Envoi adresse hote
                            if ADRCOUNT < 6 then
                                TDATAO <= HOST_ADDRESS((47 - (ADRCOUNT * 8)) downto (48 - ((ADRCOUNT+1) * 8))); 
                                TREADDP <= '1';                  
                                ADRCOUNT := ADRCOUNT + 1; 
                            end if; 
                            
                            if ADRCOUNT = 6 then 
                                ADRCOUNT := 0; 
                                TADR_SENT := '1'; 
                            end if; 		
                            
                        -- Envoi des donnees 
                        elsif DADR_SENT = '1' and TADR_SENT = '1' and LAST_DATA = '0' then  	-- CAS 2 adresses envoyees, debut donnees

                            TDATAO <= TDATAI; 
                            TREADDP <= '1'; 						-- Lecture des data in
                            if TLASTP = '1' then 
                                LAST_DATA := '1'; 
                            end if; 
                        
                        elsif DADR_SENT = '1' and TADR_SENT = '1' and LAST_DATA = '1' then 
                            TRNSMTP <= '0'; 
                            TDATAO <= X"AB"; 
                            TDONEP <= '1'; 
                            DADR_SENT := '0'; 
                            TADR_SENT := '0'; 
                            SENDING <= '0'; 
                            LAST_DATA := '0';
                            if SENDING_FAIL = '1' then 
                                TSOCOLP <= '1'; 
                            end if;
                            PAUSE := '1'; 
                        end if;
                    end if; 
                end if; 
            end if; 
        end if; 
	end process Transmitter;
------------------------ end Transmition ----------------------------------

--------------------------------------------------------------------------
--                      Detecteur de collision                          -- 
--------------------------------------------------------------------------

    Collision_Detect : process
        variable LFSR_STATE : STD_LOGIC_VECTOR (31 downto 0) := X"01100100"; 
        variable NEW_LFSR_STATE : STD_LOGIC_VECTOR (31 downto 0); 
        variable LFSR_INPUT : STD_LOGIC := '0';
        variable LFSR_OUTPUT : STD_LOGIC := '0';
        constant LFSR_CONNECT : STD_LOGIC_VECTOR(31 downto 0) := X"01110110";
        variable TEMP_LFSR_BUFF : STD_LOGIC_VECTOR(31 downto 0); 
        variable RANDOM_TIME_BITS : STD_LOGIC_VECTOR(6 downto 0) := "0000000"; 
        variable RANDOM_TIME : integer range 0 to 64 + 7*8;  -- Temps minimum : 7*8 periodes, rception EFD et adresse 
        variable TIME_COUNT : INTEGER range 0 to 64 + 7*8; 
    begin 
        wait until CLK10I'event and CLK10I = '1';
        R_ALLOWED <= '1';                   -- Reception toujours prioritaire ! 
        
        if RESETN = '0' then 
            LFSR_STATE := X"1347e3a1";      -- Etat initial arbitraire pour le LFSR
            LFSR_INPUT := '0'; 
				LFSR_OUTPUT := '0'; 
				TEMP_LFSR_BUFF := LFSR_STATE; 
				RANDOM_TIME_BITS := "0000000"; 
				RANDOM_TIME := CONV_INTEGER(unsigned(RANDOM_TIME_BITS)) + 7*8;
				TIME_COUNT := 0;
        else
            -- Generation d'un nombre de periode d'attente aleatoire
            -- Linear Feedback Shift Register
            if TIME_COUNT = 0 then 
                for RAND_POS in 0 to 6 loop 
                    LFSR_OUTPUT := LFSR_STATE(31);
                    TEMP_LFSR_BUFF := LFSR_STATE and LFSR_CONNECT; 
                    for POS in 0 to 31 loop 
                        if POS = 0 then 
                            LFSR_INPUT := TEMP_LFSR_BUFF(0); 
                        else
                            LFSR_INPUT := TEMP_LFSR_BUFF(POS) xor LFSR_INPUT; 
                            NEW_LFSR_STATE(POS) := LFSR_STATE(POS - 1); 
                        end if; 
                    end loop; 
                    NEW_LFSR_STATE(0) := LFSR_INPUT; 
                    LFSR_STATE := NEW_LFSR_STATE; 
                    RANDOM_TIME_BITS(RAND_POS) := LFSR_OUTPUT; 
                    TIME_COUNT := 1; 
                    RANDOM_TIME := CONV_INTEGER(UNSIGNED(RANDOM_TIME_BITS)) + 7*8; 
                end loop; 
            end if; 
            
            -- Detection d'une collision 
            if (TAVAILP = '1' and RECEIVING = '1') or (SENDING = '1' and RENABP = '1') then 
                TIME_COUNT := 1; 
                T_ALLOWED <= '0'; 
                R_ALLOWED <= '0'; 
            end if; 
            
            -- Mise en attente pendant un temps aleatoire
            if TIME_COUNT > 0 and TIME_COUNT < RANDOM_TIME then 
                TIME_COUNT := TIME_COUNT + 1; 
            else
                T_ALLOWED <= '1'; 
                TIME_COUNT := 0;
            end if; 
        end if; 
    end process Collision_Detect; 
end Behavioral;
