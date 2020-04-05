----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:47:05 04/04/2020 
-- Design Name: 
-- Module Name:    slrl_latch - slrl_latch_arch 
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

entity slrl_latch is
    Port ( R_L : in  STD_LOGIC;
           S_L : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_N : out  STD_LOGIC);
end slrl_latch;

architecture slrl_latch_arch of slrl_latch is

signal Qa, Qaa, Qb_N, Qbb_N: STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;

begin
		U1: AND2 port map (S_L, Qbb_N, Qa);
		U2: AND2 port map (R_l, Qaa, Qb_N);
		U3: INV port map (Qa, Qaa);
		U4: INV port map (Qb_N, Qbb_N);
		Q <= Qaa;
		Q_N <= Qbb_N;
		
end slrl_latch_arch;

