library ieee;
use ieee.std_logic_1164.all;

entity ACC is
	port (
		A          : in  std_logic_vector(numBit - 1 downto 0);
		B          : in  std_logic_vector(numBit - 1 downto 0);
		CLK        : in  std_logic;
		RST_n      : in  std_logic;
		ACCUMULATE : in  std_logic;
		ACC_EN_n   : in  std_logic;
		Y          : out std_logic_vector(numBit - 1 downto 0));
end entity;

architecture structural of ACC is

	

begin

end structural;
