library IEEE;
use IEEE.std_logic_1164.all;

entity ROM is
	port(address : in std_logic_vector(10 downto 0);
		  dataOut : out std_logic_vector(14 downto 0));
end ROM;


architecture Behavioral of ROM is
	subtype memory is std_logic_vector(14 downto 0);
	type ROM is array (3 downto 0) of memory;
	constant c_memory : ROM := ("100100111111000", "011001011110100", "001111100110010", "110011101010001");

begin

		dataOut <= c_memory(to_integer(unsigned(addrin)));

end Behavioral;

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity Counter is
	port(clk  : in std_logic;
			count : out std_logic_vector);
end Counter;


architecture Behavioral of Counter is
begin

end Behavioral;