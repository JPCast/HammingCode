library IEEE;
use IEEE.std_logic_1164.all;
library xor_operator.all;

entity HammingEncoder is
	port(m  : in std_logic_vector(10 downto 0);
		  x : out std_logic_vector(14 downto 0));
		  
end HammingEncoder;

architecture Structural of HammingEncoder is
	component xor_operator
		port(m1, m2 : in std_logic;
				x		: out std_logic);
	end component;
	
	signal dOut: std_logic_vector(23 downto 0);
				
	signal r1: std_logic := m(0) xor m(1);
	signal r2: std_logic := r1 xor m(2) xor m(3);
	signal r3: std_logic := m(4) xor m(5) xor m(6);
begin

	xor_operator0: xor_operator(m(10), m(7), dOut(0));
	xor_operator1: xor_operator(dOut(0), m(4), dOut(1));
	xor_operator2: xor_operator(dOut(1), m(4), dOut(2));
	

	x(0) <= m(10) xor m(9) xor r3 xor m(2) xor m(0);

	x(1) <= m(8) xor m(7) xor r3 xor r1;

	x(2) <= m(9) xor m(8) xor m(5) xor r2;
	
	x(3) <= m(10) xor m(7) xor m(4) xor r2;
	
	x(4) <= m(0);
	
	x(5) <= m(1);
	
	x(6) <= m(2);

	x(7) <= m(3);

	x(8) <= m(4);	

	x(9) <= m(5);	

	x(10) <= m(6);
	
	x(11) <= m(7);

	x(12) <= m(8);

	x(13) <= m(9);

	x(14) <= m(10);
	
	
		
end Behavioral;