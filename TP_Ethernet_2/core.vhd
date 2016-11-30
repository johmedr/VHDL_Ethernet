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
           TFINISHP : in  STD_LOGIC;
           TLASTP : in  STD_LOGIC;
           TREADDP : out  STD_LOGIC;
           TRNSMTP : out  STD_LOGIC;
           TSTARTP : out  STD_LOGIC;
           TSOCOLP : out  STD_LOGIC;
    -- Commun 
           NOADDRI : in  STD_LOGIC_VECTOR (47 downto 0);
           CLKDIV8_UP : out  STD_LOGIC;
           CLK10I : in  STD_LOGIC;
           RESETN : in  STD_LOGIC);  
end Core;


architecture Behavioral of Core is
	-- Signaux du diviseur d'horloge
	signal CLKDIV8 : STD_LOGIC := '0';         -- Horloge divisée par 8 
	signal CLKDIV_UP : STD_LOGIC := '0';       -- HIGH sur front montant de CLKDIV8
	
	-- Adresse MAC de l'hote
	signal HOST_ADDRESS : STD_LOGIC_VECTOR (47 downto 0) := X"123456123456"; 

	-- Signaux d'etat pour le Receiver
	signal S_RSMATIP : STD_LOGIC :='0';
	signal S_RCVNGP : STD_LOGIC := '0'; 
	
	-- Jeton envoi/reception, mis à un par l'emetteur/le recepteur. 
	signal SENDING : STD_LOGIC := '0'; 
	signal RECEIVING : STD_LOGIC := '0'; 
	
	-- Requete de synchronisation diviseur d'horloge
	signal T_REQUEST_CK_SYNC : STD_LOGIC := '0'; 
	signal R_REQUEST_CK_SYNC : STD_LOGIC := '0'; 
	
	-- Signal de collision detectee, gere par le detecteur de collision
	signal COL_DETECTED : STD_LOGIC := '0'; 
	
begin

------------------------------------------------------------------------
--                     DIVISEUR D'HORLOGE                             --
------------------------------------------------------------------------
	CLKDIV : process
        
		variable clk_count : INTEGER RANGE 0 TO 4;        -- Compte les tics d'horloge (CLK10I) 
		variable CLKDIV_RST : STD_LOGIC;                  -- HIGH si une demande de reset est active
		
	begin
        -- Synchronisation sur front montant de CLK10I
		wait until CLK10I'event and CLK10I='1'; 
		
		-- Rapatriement des demande de synchronisation
		CLKDIV_RST := T_REQUEST_CK_SYNC or R_REQUEST_CK_SYNC;
		
		CLKDIV_UP <= '0'; 
		
		-- Synchronisation de l'horloge
		if CLKDIV_RST = '1' then 
			CLKDIV8 <= '0';          -- Mise à O de l'horloge (on veut commencer sur front montant) 
			clk_count := 0;          -- Reset du compteur de tics
		end if; 
		
		-- Front montant si clk_count = 0 et que l'on était à l'état bas
-- 		if clk_count = 0 and CLKDIV8 = '1' then
-- 			CLKDIV_UP <= '1';
-- 		end if;

-- Fonctionnement normal	
		if clk_count = 4 then 	-- Si l'horloge était à 0, elle va passer à 1 => front montant 
			CLKDIV8 <= not CLKDIV8; 		-- Toggle
			clk_count := 0; 					-- Reset du compteur 
			if CLKDIV8 = '0' then 
                CLKDIV_UP <= '1';
            end if; 
		end if; 
				-- Incrementation du compteur de tics 
		clk_count := clk_count + 1;
		CLKDIV8_UP <= CLKDIV_UP;
	end process CLKDIV; 
------------------------ end DIVISEUR HORLOGE --------------------------
	
------------------------------------------------------------------------
--                       	PARTIE RECEPTION                           --
------------------------------------------------------------------------
	-- Processus de reception
	Receiver : process
		variable ADDRESS_BUFFER : STD_LOGIC_VECTOR (47 downto 0);     -- Buffer de stockage pour l'adresse destinataire
		variable RCOUNT : integer range 6 downto 0;                   -- Compteur pour reception de l'adresse destinataire
		variable PAUSE : STD_LOGIC := '0';                            -- Etat pause du recepteur
		variable ALLOWED_RESET : STD_LOGIC := '1';                    -- Autorisation de resynchroniser l'horloge (LOW quand resync nécessaire) 
	begin
		wait until CLK10I'event and CLK10I='1' and RENABP='1'; 	      -- CLK10I Sync
		
		RCLEANP <= '0';
		RBYTEP <= '0'; 
		RDONEP <= '0'; 
		R_REQUEST_CK_SYNC <= '0';
		ALLOWED_RESET := '1';
		
		-- Activation du receiver
		if RENABP = '1' then 
		
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
						R_REQUEST_CK_SYNC <= '1';                  -- Sync clock divisé 8 fois
					end if;
					
					S_RCVNGP <= '1';	                           -- Receiving pulse
					ADDRESS_BUFFER := (others=>'0');               -- Reset buffer adresse
					RECEIVING <= '1';  							   -- On est en attente de réception
					
				end if;
            
            -- Réception débuté, controle adresse dest.
			elsif S_RCVNGP = '1' and S_RSMATIP='0' then 
                    
                    -- Reception de l'adresse destinataire
					if RCOUNT < 6 then
                        -- Synchronisation sur front montant de CLKDIV
						if CLKDIV_UP = '1' then
							ADDRESS_BUFFER((47 - (RCOUNT * 8)) downto (48 - ((RCOUNT+1) * 8))) :=  RDATAI(7 downto 0); 
							RCOUNT := RCOUNT + 1; 
						end if; 
						
                    -- Reception de l'adresse terminée, comparaison
					else
                        -- Comparaison de l'adresse recu avec celle de l'hote
						if  ADDRESS_BUFFER /= HOST_ADDRESS then
						
                            -- Adresse invalide, pulse de reset du buffer host
							RCLEANP <= '1';
							
							-- Arret de la reception 
							S_RCVNGP <= '0';
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
                        -- On est pas à la fin de la trame
                        -- On recopie les donnees lues sur vers l'hote
						RDATAO <= RDATAI;
						
						-- Pulse octet lu
						RBYTEP <= '1'; 
					end if; 
				end if;
			end if;
		end if; 
		

	end process Receiver; 
	
	RSMATIP <= S_RSMATIP; 
	RCVNGP <= S_RCVNGP; 
--------------------------- end RECEPTION --------------------------------
	
------------------------------------------------------------------------
--                       	PARTIE EMISSION                            --
------------------------------------------------------------------------
	-- Processus de transmittion
	Transmitter : process
		variable ADRCOUNT : integer range 6 downto 0;         -- Compteur de la taille de l'adresse
		variable COUNT4 : integer range 5 downto 0;	          -- Compteur d'envoi message erreur (4bytes 10101010) 
		variable COUNT10 : integer range 10 downto 0;         -- Compteur pour les pulse 100ns 
		variable DADR_SENT : STD_LOGIC := '0';                -- Etat adresse destinataire envoyée 
		variable TADR_SENT : STD_LOGIC := '0';                -- Etat adresse hote envoyée
		variable SFD_SENT : STD_LOGIC := '0';                 -- Etat SFD envoyé		
		
	begin
        -- Synchronisation sur CLK10I 
		wait until CLK10I'event and CLK10I='1'; 	        
		
		-- Pour les pulse de 100 ns (TSTARTP et TDONEP) il suffit de mettre COUNT10 a 1
		if COUNT10 > 0 and COUNT10 < 10 then 
			COUNT10 := COUNT10 + 1; 
		else 
            -- 100ns depuis la mise a 1 de COUNT10, reset des sorties
			COUNT10 := 0;        
			TSTARTP <= '0'; 
			TDONEP <= '0'; 
		end if; 
		
		-- Reset pour pulse de 10ns
		TRNSMTP <= '0'; 
		TREADDP <= '0'; 
		T_REQUEST_CK_SYNC <= '0'; 
		TSOCOLP <= '0'; 
		
		-- Demande d'envoi de la part de l'hote, pas d'envoi en cours 
		if TAVAILP = '1' and SENDING = '0' then
		
			SENDING <= '1';              -- Etat envoi
			TRNSMTP <= '1'; 			 -- Pulse transmission 
			TSTARTP <= '1'; 			 -- Début transmission
			COUNT10 := 1;                -- Début du timer 100ns 
			T_REQUEST_CK_SYNC <= '1';    -- Demande de synchronisation de l'horloge CLKDIV8 
			ADRCOUNT := 0;               -- Reset compteur adresse
			DADR_SENT := '0';            -- Adresse destinataire non envoyée
			COUNT4 := 0;                 -- Reset compteur erreur
			
        -- Etat d'envoi 
		elsif SENDING = '1' then
			
			-- Synchronisation sur CLKDIV8 
			if CLKDIV_UP = '1' then 
			
				-- TABORTP actuellement recu, ou precedemment recu et donc comptage commence
				if (TABORTP = '1' or COUNT4 > 0) and COUNT4 < 5 then
                    
					TDATAO <= X"AA";           -- Envoi byte 10101010
					COUNT4 := COUNT4 + 1;      
					-- À compléter
					if COUNT4 = 4 then         -- Fin de la procedure d'abandon
						SENDING <= '0';        -- On est plus en envoi
						COUNT4 := 0;           -- Reset du compteur
						TSOCOLP <= '1';        -- Pulse collision 
					end if; 
					
				-- Fonctionnement nominal
				else 
			
                    -- SFD non envoye
					if SFD_SENT = '0' then 
                        TDATAO <= X"AB";        -- Envoi du SFD
						SFD_SENT := '1';        
					
					-- SFD envoye - aucune adresse envoyee
					elsif SFD_SENT = '1' and DADR_SENT = '0' and TADR_SENT = '0' then
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
                    
                    -- SFD et adresse destinataire envoyes
					elsif SFD_SENT = '1' and DADR_SENT = '1' and TADR_SENT = '0' then 
					
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
					elsif DADR_SENT = '1' and TADR_SENT = '1' and TLASTP = '0' then 	-- CAS 2 adresses envoyees, debut donnees
						TDATAO <= TDATAI; 
						TREADDP <= '1'; 						-- Lecture des data in
					 

					elsif DADR_SENT = '1' and TADR_SENT = '1' and TLASTP = '1' then 
						TDATAO <= X"AB"; 
						TDONEP <= '1'; 
						COUNT10 := 1;
						DADR_SENT := '0'; 
						TADR_SENT := '0'; 
						SENDING <= '0'; 
						
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
	begin 
		wait until CLK10I'event and CLK10I = '1';		
		
		if (TAVAILP = '1' and RECEIVING = '1') or (SENDING = '1' and RECEIVING = '1') then 
			COL_DETECTED <= '1'; 
		end if; 
		
	end process Collision_Detect; 
	
	
	
end Behavioral;
