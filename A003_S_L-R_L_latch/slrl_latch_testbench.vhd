--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:40:50 04/04/2020
-- Design Name:   
-- Module Name:   /home/student/github/digital_circuits_and_systems/A003_S_L-R_L_latch/slrl_latch_testbench.vhd
-- Project Name:  A003_S_L-R_L_latch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: slrl_latch
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
 
ENTITY slrl_latch_testbench IS
END slrl_latch_testbench;
 
ARCHITECTURE behavior OF slrl_latch_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT slrl_latch
    PORT(
         R_L : IN  std_logic;
         S_L : IN  std_logic;
         Q : OUT  std_logic;
         Q_N : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R_L : std_logic := '0';
   signal S_L : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_N : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: slrl_latch PORT MAP (
          R_L => R_L,
          S_L => S_L,
          Q => Q,
          Q_N => Q_N
        );
 

   -- Stimulus process
   stim_proc: process
   begin	

      -- insert stimulus here 
		S_L <= '0'; R_L <= '0';
		wait for 50 ns;
		S_L <= '0'; R_L <= '1';
		wait for 50 ns;
		S_L <= '1'; R_L <= '1';
		wait for 50 ns;
		S_L <= '1'; R_L <= '0';
		wait for 50 ns;
		S_L <= '1'; R_L <= '1';
		wait for 50 ns;
		S_L <= '0'; R_L <= '0';
		wait for 50 ns;

      wait;
   end process;

END;

