----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:22:33 04/03/2020 
-- Design Name: 
-- Module Name:    v3to8dec - v3to8dec_arch 
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

entity v3to8dec is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end v3to8dec;

architecture v3to8dec_arch of v3to8dec is
signal A2_L, EN_A2, EN_A2_L: STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component v2to4dec port (EN: in STD_LOGIC; I0: in STD_LOGIC; I1: in STD_LOGIC; Y0: out STD_LOGIC; Y1: out STD_LOGIC; Y2: out STD_LOGIC; Y3: out STD_LOGIC); end component;
begin
	 U1: INV port map (A(2), A2_L);
	 U2: AND2 port map (EN, A2_L,EN_A2_L);
	 U3: AND2 port map (EN, A(2), EN_A2);
	 U4: v2to4dec port map(EN_A2_L, A(0), A(1), O(0), O(1), O(2), O(3));
	 U5: v2to4dec port map (EN_A2, A(0), A(1), O(4), O(5), O(6), O(7));
end v3to8dec_arch;


