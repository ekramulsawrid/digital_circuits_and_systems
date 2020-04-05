----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:20:47 04/05/2020 
-- Design Name: 
-- Module Name:    sr_latch_en - sr_latch_en_arch 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity sr_latch_en is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end sr_latch_en;

architecture sr_latch_en_arch of sr_latch_en is

signal S_C, R_C: STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component slrl_latch port (R_L : in  STD_LOGIC; S_L : in  STD_LOGIC; Q : out  STD_LOGIC; Q_N : out  STD_LOGIC); end component;

begin
	U1: AND2 port map (S, C, S_C);
	U2: AND2 port map (R, C, R_C);
	U3: slrl_latch port map (NOT R_C, NOT S_C, Q, QN);
	
end sr_latch_en_arch;

