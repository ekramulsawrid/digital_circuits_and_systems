--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:27:26 04/05/2020
-- Design Name:   
-- Module Name:   /home/student/github/digital_circuits_and_systems/A004_S-R_latch/sr_latch_en_testbench.vhd
-- Project Name:  A004_S-R_latch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_latch_en
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
 
ENTITY sr_latch_en_testbench IS
END sr_latch_en_testbench;
 
ARCHITECTURE behavior OF sr_latch_en_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sr_latch_en
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         C : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_latch_en PORT MAP (
          S => S,
          R => R,
          C => C,
          Q => Q,
          QN => QN
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
      -- insert stimulus here
		S <= '0'; R <= '1'; C <= '1';
		wait for 50 ns;
		S <= '0'; R <= '0'; C <= '1';
		wait for 50 ns;
		S <= '1'; R <= '0'; C <= '1';
		wait for 50 ns;
		S <= '0'; R <= '0'; C <= '1';
		wait for 50 ns;
		
		S <= '0'; R <= '1'; C <= '0';
		wait for 50 ns;
		S <= '0'; R <= '0'; C <= '0';
		wait for 50 ns;
		S <= '1'; R <= '0'; C <= '0';
		wait for 50 ns;
		S <= '0'; R <= '0'; C <= '0';
		wait for 50 ns;
		S <= '1'; R <= '1'; C <= '0';
		wait for 50 ns;
		
		S <= '1'; R <= '1'; C <= '1';
		wait for 50 ns;
		

      wait;
   end process;

END;

