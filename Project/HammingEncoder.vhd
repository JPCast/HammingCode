library IEEE;
use IEEE.std_logic_1164.all;

entity HammingEncoder is
	port(dIn  : in std_logic_vector(10 downto 0);
		  dOut : out std_logic_vector(14 downto 0));
		  
end HammingEncoder;

architecture Behavioral of HammingEncoder is
begin

	dOut(0) <= dIn(9) xor dIn(8) xor dIn(6) xor dIn(4) xor dIn(3) xor dIn(2) xor dIn(0);

	dOut(1) <= dIn(8) xor dIn(7) xor dIn(5) xor dIn(4) xor dIn(3) xor dIn(1) xor dIn(0);

	dOut(2) <= dIn(10) xor dIn(7) xor dIn(6) xor dIn(4) xor dIn(2) xor dIn(1) xor dIn(0);
	
	dOut(3) <= dIn(10) xor dIn(9) xor dIn(5) xor dIn(3) xor dIn(2) xor dIn(1) xor dIn(0);
	
	dout(4) <= dIn(0);
	
	dout(5) <= dIn(1);
	
	dout(6) <= dIn(2);

	dout(7) <= dIn(3);

	dout(8) <= dIn(4);	

	dout(9) <= dIn(5);	

	dout(10) <= dIn(6);
	
	dout(11) <= dIn(7);

	dout(12) <= dIn(8);

	dout(13) <= dIn(9);

	dout(14) <= dIn(10);
	
	
		
end Behavioral;