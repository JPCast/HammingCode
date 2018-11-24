library IEEE;
use IEEE.std_logic_1164.all;

entity xor_operator is
	port( m1, m2 : in std_logic;
			x 		 : out std_logic);
end xor_operator;

architecture Behavioral of xor_operator is
begin
		x <= m1 xor m2;
end Behavioral;