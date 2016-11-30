--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:03:14 11/03/2016
-- Design Name:   
-- Module Name:   /home/monneret/TP_Ethernet/Receiver_Test.vhd
-- Project Name:  TP_Ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Core
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Receiver_Test IS
END Receiver_Test;
 
ARCHITECTURE behavior OF Receiver_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Core
    PORT(
         RBYTEP : OUT  std_logic;
			CLKDIV8_UP : out  STD_LOGIC;	
         RCLEANP : OUT  std_logic;
         RCVNGP : OUT  std_logic;
         RDATAO : OUT  std_logic_vector(7 downto 0);
         RDATAI : IN  std_logic_vector(7 downto 0);
         RDONEP : OUT  std_logic;
         RENABP : IN  std_logic;
         RSMATIP : OUT  std_logic;
         RSTARTP : OUT  std_logic;
         TABORTP : IN  std_logic;
         TAVAILP : IN  std_logic;
         TDATAO : OUT  std_logic_vector(7 downto 0);
         TDATAI : IN  std_logic_vector(7 downto 0);
         TDONEP : OUT  std_logic;
         TFINISHP : IN  std_logic;
         TLASTP : IN  std_logic;
         TREADDP : OUT  std_logic;
         TRNSMTP : OUT  std_logic;
         TSTARTP : OUT  std_logic;
         TSOCOLP : OUT  std_logic;
         NOADDRI : IN  std_logic_vector(47 downto 0);
         CLK10I : IN  std_logic;
         RESETN : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RDATAI : std_logic_vector(7 downto 0) := (others => '0');
   signal RENABP : std_logic := '0';
   signal TABORTP : std_logic := '0';
   signal TAVAILP : std_logic := '0';
   signal TDATAI : std_logic_vector(7 downto 0) := (others => '0');
   signal TFINISHP : std_logic := '0';
   signal TLASTP : std_logic := '0';
   signal NOADDRI : std_logic_vector(47 downto 0) := (others => '0');
   signal CLK10I : std_logic := '1';
   signal RESETN : std_logic := '0';

 	--Outputs
   signal RBYTEP : std_logic;
	signal CLKDIV8_UP : STD_LOGIC;
   signal RCLEANP : std_logic;
   signal RCVNGP : std_logic;
   signal RDATAO : std_logic_vector(7 downto 0);
   signal RDONEP : std_logic;
   signal RSMATIP : std_logic;
   signal RSTARTP : std_logic;
   signal TDATAO : std_logic_vector(7 downto 0);
   signal TDONEP : std_logic;
   signal TREADDP : std_logic;
   signal TRNSMTP : std_logic;
   signal TSTARTP : std_logic;
   signal TSOCOLP : std_logic;

   -- Clock period definitions
   constant CLK10I_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Core PORT MAP (
          RBYTEP => RBYTEP,
			 CLKDIV8_UP =>CLKDIV8_UP,
          RCLEANP => RCLEANP,
          RCVNGP => RCVNGP,
          RDATAO => RDATAO,
          RDATAI => RDATAI,
          RDONEP => RDONEP,
          RENABP => RENABP,
          RSMATIP => RSMATIP,
          RSTARTP => RSTARTP,
          TABORTP => TABORTP,
          TAVAILP => TAVAILP,
          TDATAO => TDATAO,
          TDATAI => TDATAI,
          TDONEP => TDONEP,
          TFINISHP => TFINISHP,
          TLASTP => TLASTP,
          TREADDP => TREADDP,
          TRNSMTP => TRNSMTP,
          TSTARTP => TSTARTP,
          TSOCOLP => TSOCOLP,
          NOADDRI => NOADDRI,
          CLK10I => CLK10I,
          RESETN => RESETN
        );

   --Clock process definitions
   CLK10I_process :process
   begin
		CLK10I <= '1';
		wait for CLK10I_period/2;
		CLK10I <= '0';
		wait for CLK10I_period/2;
   end process;
 
	CLK10I<= not CLK10I after 5 ns; 
    -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK10I_period*10;
		

      -- insert stimulus here 
		
		RDATAI <= (others=>'1') after 200ns; 
		RDATAI <= X"AB" after 400ns; 
		RENABP <= '0', '1' after 600ns; 
		RDATAI <= X"AB"; 
		RENABP <= '1'; 
		RDATAI <= X"12" after 80ns, X"34" after 2*80ns, X"56" after 3*80ns;--, X"12" after 4*80ns,X"34" after 5*80ns,X"56" after 6*80ns,X"AB" after 10*80ns,X"00" after 11*80ns,X"AB" after 12*80ns- 20ns,X"12" after 13*80ns- 20ns,X"34" after 14*80ns- 20ns,X"56" after 15*80ns- 20ns,X"AB" after 16*80ns- 20ns  ;
	
		TAVAILP <= '0', '1' after 200ns, '0' after 210ns; 
		TDATAI <= X"12" after 80ns, X"34" after 2*80ns, X"56" after 3*80ns, X"12" after 4*80ns,X"34" after 5*80ns;
		TLASTP <= '0', '1' after 5*80ns; 
		TABORTP <= '0', '1' after 7*80ns, '0' after 7*80ns+10ns;
		
      wait;
   end process;

END;