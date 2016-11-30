----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:51:05 10/26/2016 
-- Design Name: 
-- Module Name:    Core - Behavioral 
-- Project Name: 
-- Target Devices: 
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
    Port ( RBYTEP : out  STD_LOGIC;
			  CLKDIV8_UP : out  STD_LOGIC;
           RCLEANP : out  STD_LOGIC;
           RCVNGP : out  STD_LOGIC;
           RDATAO : out  STD_LOGIC_VECTOR (7 downto 0);
			  RDATAI : in STD_LOGIC_VECTOR (7 downto 0);
           RDONEP : out  STD_LOGIC;
           RENABP : in  STD_LOGIC;
           RSMATIP : out  STD_LOGIC;
           RSTARTP : out  STD_LOGIC;
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
           NOADDRI : in  STD_LOGIC_VECTOR (47 downto 0);
           CLK10I : in  STD_LOGIC;
           RESETN : in  STD_LOGIC);
			  
end Core;


architecture Behavioral of Core is
<<<<<<< HEAD
	signal CLKDIV8 : STD_LOGIC; 
	signal CLKDIV_RST : STD_LOGIC := '0'; 
	signal CLKDIV_UP : STD_LOGIC := '0'; 
	
	signal HOST_ADDRESS : STD_LOGIC_VECTOR (47 downto 0) := X"123456123456"; 
	signal S_RSMATIP : STD_LOGIC :='0';
	signal S_RCVNGP : STD_LOGIC := '0'; 
begin

	CLKDIV : process
		variable clk_count : INTEGER RANGE 0 TO 3; 
	begin
		wait until CLK10I'event and CLK10I='1'; 
			CLKDIV_UP <= '0'; 
		if CLKDIV_RST = '1' then 			-- Reset de l'horloge
			CLKDIV8 <= '0'; 
			clk_count := 0; 
		else 										-- Fonctionnement normal	
			if clk_count = 3 then 	-- Si l'horloge était à 0, elle va passer à 1 => front montant 
				CLKDIV8 <= not CLKDIV8; 		-- Toggle
				clk_count := 0; 					-- Reset du compteur 
			else
				clk_count := clk_count + 1;		--	Compte 8 tics d'horloge
			end if; 
		end if; 
		if clk_count = 2 and CLKDIV8 = '0' then
			CLKDIV_UP <= '1'; 
		end if;
		CLKDIV8_UP <= CLKDIV_UP;
	end process CLKDIV; 
	
=======

	-- Signaux du diviseur d'horloge
	signal CLKDIV8 : STD_LOGIC := '0'; 
	signal CLKDIV_UP : STD_LOGIC := '0'; 
	
	-- Adresse MAC de l'hote
	signal HOST_ADDRESS : STD_LOGIC_VECTOR (47 downto 0) := X"123456123456"; 
	
	signal S_RSMATIP : STD_LOGIC :='0';
	signal S_RCVNGP : STD_LOGIC := '0'; 
	
	-- Jeton envoi/reception, mis à un par l'emetteur/le recepteur. 
	signal SENDING : STD_LOGIC := '0'; 
	signal RECEIVING : STD_LOGIC := '0'; 
	
	-- Requete de synchronisation diviseur d'horloge
	signal T_REQUEST_CK_SYNC : STD_LOGIC := '0'; 
	signal R_REQUEST_CK_SYNC : STD_LOGIC := '0'; 
	
	-- Collisions 
	signal COL_DETECTED : STD_LOGIC := '0'; 
	
begin
		
		
------------------------------------------------------------------------
--                     DIVISEUR D'HORLOGE                             --
------------------------------------------------------------------------
	CLKDIV : process
	
		variable clk_count : INTEGER RANGE 0 TO 4; 
		variable CLKDIV_RST : STD_LOGIC; 
		
	begin
		wait until CLK10I'event and CLK10I='1'; 
		
		CLKDIV_RST := T_REQUEST_CK_SYNC xor R_REQUEST_CK_SYNC; 
		CLKDIV_UP <= '0'; 
		
		if CLKDIV_RST = '1' then 			-- Reset de l'horloge
			CLKDIV8 <= '0'; 
			clk_count := 0; 
		end if; 
		
		if clk_count = 0 and CLKDIV8 = '0' then
			CLKDIV_UP <= '1'; 
		end if;
		
		clk_count := clk_count + 1;		--	Compte 8 tics d'horloge

		-- Fonctionnement normal	
		if clk_count = 4 then 	-- Si l'horloge était à 0, elle va passer à 1 => front montant 
			CLKDIV8 <= not CLKDIV8; 		-- Toggle
			clk_count := 0; 					-- Reset du compteur 

		end if; 
		
		CLKDIV8_UP <= CLKDIV_UP;
	end process CLKDIV; 
	
	
------------------------ end DIVISEUR HORLOGE --------------------------
	
------------------------------------------------------------------------
--                       	PARTIE RECEPTION                           --
------------------------------------------------------------------------
	-- Processus de reception
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
	Receiver : process
		variable ADDRESS_BUFFER : STD_LOGIC_VECTOR (47 downto 0);
		variable RCOUNT : integer range 6 downto 0; 
		variable PAUSE_START : STD_LOGIC := '0';
<<<<<<< HEAD
		variable PAUSE_END : STD_LOGIC := '0';
		--variable COUNT8 : integer range 0 downto 7; 
=======
		variable PAUSE : STD_LOGIC := '0';
		variable ALLOWED_RESET : STD_LOGIC := '1';
		
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
	begin
		wait until CLK10I'event and CLK10I='1' and RENABP='1'; 	-- CLK10 Sync
		
		RCLEANP <= '0';
		RBYTEP <= '0'; 
		RDONEP <= '0'; 
<<<<<<< HEAD
		--CLKDIV_RST <= '0';
		
		if PAUSE_END = '1' then
			if CLKDIV_UP = '1' then
				PAUSE_END := '0';
			end if ;
		 
		elsif RDATAI=X"AB" and S_RCVNGP='0' and S_RSMATIP='0' then  -- Start Frame Delimiter
			S_RCVNGP <= '1';														-- Receiving pulse
			ADDRESS_BUFFER := (others=>'0');									-- Reset buffer adresse
			--CLKDIV_RST <= '1'; 													-- Sync clock divisé 8 fois
			RCOUNT := 0; 															-- Reset du compteur
			PAUSE_START := '1';
			
		elsif S_RCVNGP = '1' and S_RSMATIP='0' then 					-- Réception débuté, controle adresse dest. 
		   -- [TODO] Check this
			if PAUSE_START = '1' then
				if CLKDIV_UP = '1' then
					PAUSE_START := '0';
				end if ;
			else 
				if RCOUNT < 6 then													-- Réception de l'addresse destinataire
					if CLKDIV_UP = '1' then 											-- Sync sur front montant CLKDIV 
						ADDRESS_BUFFER((47 - (RCOUNT * 8)) downto (48 - ((RCOUNT+1) * 8))) :=  RDATAI(7 downto 0); 
						RCOUNT := RCOUNT + 1; 
					end if; 
				else																		-- Réception terminée 
					if  ADDRESS_BUFFER /= HOST_ADDRESS then 						-- Comparaison adresse dest. - adresse host
						RCLEANP <= '1'; 														-- Adresse invalide, pulse de reset buffer host
						S_RCVNGP <= '0';														-- On arrete la reception
					else 
						S_RSMATIP <= '1'; 													-- Adresse valide, suite lecture
					end if;
				end if; 
			end if;
				
			
		elsif S_RCVNGP = '1' and S_RSMATIP = '1' then				-- Adresse dest. valide, suite lecture 
			if CLKDIV_UP = '1' then 											-- Sync sur front montant CLKDIV
				if RDATAI=X"AB" then													-- Test de End Frame Delimiter
					S_RCVNGP <= '0'; 														-- Fin de reception 
					S_RSMATIP <= '0';														-- 
					RDONEP <= '1'; 														-- Pulse reception terminée
					PAUSE_END := '1'; 
				else 
					RDATAO <= RDATAI; 
					RBYTEP <= '1'; 														-- Pulse octet lu
				end if; 
			end if;
		end if;
=======
		R_REQUEST_CK_SYNC <= '0';
		ALLOWED_RESET := '1';
		
		if RENABP = '1' then 
			if S_RCVNGP='0' and S_RSMATIP='0' and RDATAI=X"AB" then -- Start Frame Delimiter
			
				if PAUSE = '1' then
					if CLKDIV_UP = '1' then
						PAUSE := '0';
						ALLOWED_RESET := '0';
					end if; 
				end if; 
				
				if PAUSE = '0' then
					S_RCVNGP <= '1';														-- Receiving pulse
					ADDRESS_BUFFER := (others=>'0');									-- Reset buffer adresse
					if ALLOWED_RESET = '1' then
						R_REQUEST_CK_SYNC <= '1'; 													-- Sync clock divisé 8 fois
					end if;
					
					RCOUNT := 0; 															-- Reset du compteur
					PAUSE_START := '1';
					RECEIVING <= '1';  														-- On est en attente de réception
				end if;
				
			elsif S_RCVNGP = '1' and S_RSMATIP='0' then 					-- Réception débuté, controle adresse dest. 
			
					if RCOUNT < 6 then													-- Réception de l'addresse destinataire
						if CLKDIV_UP = '1' then 											-- Sync sur front montant CLKDIV 
							ADDRESS_BUFFER((47 - (RCOUNT * 8)) downto (48 - ((RCOUNT+1) * 8))) :=  RDATAI(7 downto 0); 
							RCOUNT := RCOUNT + 1; 
						end if; 
					else																		-- Réception terminée 
						if  ADDRESS_BUFFER /= HOST_ADDRESS then 						-- Comparaison adresse dest. - adresse host
							RCLEANP <= '1'; 														-- Adresse invalide, pulse de reset buffer host
							S_RCVNGP <= '0';														-- On arrete la reception
						else 
							S_RSMATIP <= '1'; 													-- Adresse valide, suite lecture
						end if;
					end if; 

			elsif S_RCVNGP = '1' and S_RSMATIP = '1' then				-- Adresse dest. valide, suite lecture 
				if CLKDIV_UP = '1' then 											-- Sync sur front montant CLKDIV
					if RDATAI=X"AB" then													-- Test de End Frame Delimiter
						S_RCVNGP <= '0'; 														-- Fin de reception 
						S_RSMATIP <= '0';														-- 
						RDONEP <= '1'; 														-- Pulse reception terminée
						PAUSE := '1'; 
						RECEIVING <= '0'; 
					else 
						RDATAO <= RDATAI; 
						RBYTEP <= '1'; 														-- Pulse octet lu
					end if; 
				end if;
			end if;
		end if; 
		
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
	end process Receiver; 
	
	RSMATIP <= S_RSMATIP; 
	RCVNGP <= S_RCVNGP; 
<<<<<<< HEAD
	
	Transmitter : process
		variable ADRCOUNT : integer range 6 downto 0; 
		variable PAUSE_START : STD_LOGIC := '0';
		variable PAUSE_END : STD_LOGIC := '0';
		variable COUNT4 : integer range 4 downto 0;	-- Count for error 
		variable TRON : STD_LOGIC := '0'; -- TRON : 1 -> transmitting, 0 -> wait
		variable DADR_SENT : STD_LOGIC := '0'; 
		variable TADR_SENT : STD_LOGIC := '0'; 
	begin
		wait until CLK10I'event and CLK10I='1'; 	-- CLK10 Sync
		
		TSTARTP <= '0'; 
		TRNSMTP <= '0'; 
		TREADDP <= '0'; 
		CLKDIV_RST <= '0'; 
		
		
		if TAVAILP = '1' and TRON = '0' then
			TRON := '1'; 
			TRNSMTP <= '1'; 						-- 
			TSTARTP <= '1'; 						-- Début trans
			TDATAO <= X"AB"; 						-- EFD
			CLKDIV_RST <= '1'; 					-- Sync Clock
=======
--------------------------- end RECEPTION --------------------------------
	
------------------------------------------------------------------------
--                       	PARTIE EMISSION                            --
------------------------------------------------------------------------
	-- Processus de transmittion
	Transmitter : process
		variable ADRCOUNT : integer range 6 downto 0; 
		variable COUNT4 : integer range 5 downto 0;	-- Count for error 
		variable COUNT10 : integer range 10 downto 0; -- Count for time (100 ns) 
		--variable TRON : STD_LOGIC := '0'; -- TRON : 1 -> transmitting, 0 -> wait
		variable DADR_SENT : STD_LOGIC := '0'; 
		variable TADR_SENT : STD_LOGIC := '0'; 
		variable SFD_SENT : STD_LOGIC := '0'; 
		variable SENDING_FAIL : STD_LOGIC := '0';
		
		
	begin
		wait until CLK10I'event and CLK10I='1'; 	-- CLK10 Sync
		
		if COUNT10 > 0 and COUNT10 < 10 then 
			COUNT10 := COUNT10 + 1; 
		else 
			COUNT10 := 0; 
			TSTARTP <= '0'; 
			TDONEP <= '0'; 
		end if; 
		
		TRNSMTP <= '0'; 
		TREADDP <= '0'; 
		T_REQUEST_CK_SYNC <= '0'; 
		TSOCOLP <= '0'; 
		
		
		if TAVAILP = '1' and SENDING = '0' then
		
			SENDING <= '1'; 
			TRNSMTP <= '1'; 						-- 
			TSTARTP <= '1'; 						-- Début trans
			COUNT10 := 1; 
			T_REQUEST_CK_SYNC <= '1'; 					-- Sync Clock
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
			ADRCOUNT := 0; 
			DADR_SENT := '0';
			COUNT4 := 0;
			
<<<<<<< HEAD
		elsif TRON = '1' then
			
			
			if CLKDIV_UP = '1' then  				-- Sync sur CLKDIV 
				if (TABORTP = '1' or COUNT4 > 0) and COUNT4 < 4 then -- Pulse abandon ou comptage commencé et pas fini
					TDATAO <= X"AA"; 
					COUNT4 := COUNT4 + 1; 
					if COUNT4 = 4 then 
						TRON := '0'; 
						COUNT4 := 0;
					end if; 
					
				else
				
					TREADDP <= '1'; 						-- Lecture des data in
					
					if DADR_SENT = '0' and TADR_SENT = '0' then 			-- CAS aucune adresse envoyee
						if ADRCOUNT < 6 then
							TDATAO <= TDATAI; 
							ADRCOUNT := ADRCOUNT + 1; 
						else 
=======
		elsif SENDING = '1' then
			
			
			if CLKDIV_UP = '1' then  				-- Sync sur CLKDIV 
			
				-- Abandon
				if (TABORTP = '1' or COUNT4 > 0) and COUNT4 < 5 then -- Pulse abandon ou comptage commencé et pas fini
					TDATAO <= X"AA"; 
					COUNT4 := COUNT4 + 1; 
					-- À compléter
					if COUNT4 = 4 then 
						SENDING <= '0'; 
						COUNT4 := 0;
						TSOCOLP <= '1'; 
					end if; 
					
				-- Fonctionnement normal
				
--				-- Plus de risque de collision après un unique echec d'envoi 
--				if SENDING_FAIL = '1' then 
--					SENDING_FAIL := '0'; 
--					TSOCOLP <= '1'; 
--				end if; 
				else 
			
					if SFD_SENT = '0' then 
						TDATAO <= X"AB"; 
						SFD_SENT := '1'; 
					
					
					elsif DADR_SENT = '0' and TADR_SENT = '0' then 			-- CAS aucune adresse envoyee
						if ADRCOUNT < 6 then
							TDATAO <= TDATAI; 
							TREADDP <= '1'; 						-- Lecture des data in
							
							ADRCOUNT := ADRCOUNT + 1; 
						end if;
						
						if ADRCOUNT = 6 then 
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
							ADRCOUNT := 0; 
							DADR_SENT := '1'; 
						end if; 
						
					elsif DADR_SENT = '1' and TADR_SENT = '0' then 	 	-- CAS adresse dest envoyee
						if ADRCOUNT < 6 then
							TDATAO <= HOST_ADDRESS((47 - (ADRCOUNT * 8)) downto (48 - ((ADRCOUNT+1) * 8))); 
<<<<<<< HEAD
							ADRCOUNT := ADRCOUNT + 1; 
						else 
=======
							TREADDP <= '1'; 						-- Lecture des data in
							
							ADRCOUNT := ADRCOUNT + 1; 
						end if; 
						
						if ADRCOUNT = 6 then 
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
							ADRCOUNT := 0; 
							TADR_SENT := '1'; 
						end if; 		
						
<<<<<<< HEAD
					elsif DADR_SENT = '1' and TADR_SENT = '1' and TLASTP = '0' then 		-- CAS 2 adresses envoyees, debut donnees
						TDATAO <= TDATAI; 
=======
					elsif DADR_SENT = '1' and TADR_SENT = '1' and TLASTP = '0' then 	-- CAS 2 adresses envoyees, debut donnees
						TDATAO <= TDATAI; 
						TREADDP <= '1'; 						-- Lecture des data in
					 
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
						
					elsif DADR_SENT = '1' and TADR_SENT = '1' and TLASTP = '1' then 
						TDATAO <= X"AB"; 
						TDONEP <= '1'; 
<<<<<<< HEAD
						DADR_SENT := '0'; 
						TADR_SENT := '0'; 
						TRON := '0'; 
					end if;
				end if; 
=======
						COUNT10 := 1;
						DADR_SENT := '0'; 
						TADR_SENT := '0'; 
						SENDING <= '0'; 
						
					end if;
				end if;	
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
			end if; 
		end if; 
	end process Transmitter;
	
<<<<<<< HEAD
	
=======
	Collision_Detect : process
	begin 
		wait until CLK10I'event and CLK10I = '1';		
		
		if (TAVAILP = '1' and RECEIVING = '1') or (SENDING = '1' and RECEIVING = '1') then 
			COL_DETECTED <= '1'; 
		end if; 
		
	end process Collision_Detect; 
>>>>>>> 34800277548c6d221fd84754b45a11572bba7cfb
end Behavioral;
