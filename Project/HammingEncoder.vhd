library IEEE;
use IEEE.std_logic_1164.all;

library xor_operator;
use xor_operator.all;

entity HammingEncoder is
	port(m  : in std_logic_vector(0 to 10);
		  x : out std_logic_vector(0 to 14));
		  
end HammingEncoder;

architecture Structural of HammingEncoder is
	component xor_operator
		port(m1, m2 : in std_logic;
				x		: out std_logic);
	end component;
	
	signal dOut: std_logic_vector(17 downto 0);
				
begin

	--------operacao x11------------
	xor_operator0: xor_operator port map(m(0), m(3), dOut(0)); -- dout0 = m0 xor m3
	xor_operator1: xor_operator port map(dOut(0), m(6), dOut(1)); -- dout1 = dout0 xor m6 = m0 xor m3 xor m6
	xor_operator2: xor_operator port map(m(7), m(8), dOut(2)); -- dout2 = m7 xor m8
	xor_operator3: xor_operator port map(m(9), m(10), dOut(3)); -- dout3 = m9 xor m10
	xor_operator4: xor_operator port map(dOut(2), dOut(3), dOut(4)); -- dout4 = dout2 xor dout3 = (m7 xor m8 xor m9 xor m10)
	xor_operator5: xor_operator port map(dOut(1), dOut(4), dOut(5)); -- x11 = dOut5 = dOut1 xor dOut4 =  ((m0 xor m3) xor m6) xor ((m7 xor m8) xor (m9 xor m10))
	
	---------operacao x12------------
	xor_operator6: xor_operator port map(m(1), m(2), dOut(6)); -- dout6 = m1 xor m2
	xor_operator7: xor_operator port map(dOut(6), m(5), dOut(7)); -- dout7 = dOut6 xor m5 = m1 xor m2 xor m5
	xor_operator8: xor_operator port map(dOut(7), dOut(4), dOut(8)); -- x12 = dout8 = dOut7 xor dout4 = ((m1 xor m2) xor m5) xor ((m7 xor m8) xor (m9 xor m10))
	
	---------operacao x13------------
	xor_operator9: xor_operator port map(m(2), m(3), dOut(9)); -- dout9 = m2 xor m3
	xor_operator10: xor_operator port map(m(4), m(5), dOut(10)); -- dout10 = m4 xor m5
	xor_operator11: xor_operator port map(dOut(10), m(6), dOut(11)); -- dout11 = dOut10 xor m6 = m4 xor m5 xor m6
	xor_operator12: xor_operator port map(dOut(9), dOut(3), dOut(12)); -- dout12 = dOut9 xor dOut3 = (m2 xor m3) xor (m9 xor m10)
	xor_operator13: xor_operator port map(dOut(12), dOut(11), dOut(13)); -- x13 = dout13 = dOut12 xor dOut11s = (m2 xor m3) xor ((m4 xor m5) xor m6) xor (m9 xor m10)
	
	---------operacao x14------------
	xor_operator14: xor_operator port map(m(0), m(1), dOut(14)); -- dout14 = m0 xor m1
	xor_operator15: xor_operator port map(dOut(14), dOut(11), dOut(15)); -- dout15 = dOut14 xor dOut11 = (m0 xor m1) xor ((m4 xor m5) xor m6)
	xor_operator16: xor_operator port map(m(8), m(10), dOut(16)); -- dout16 = m8 xor m10
	xor_operator17: xor_operator port map(dOut(15), dOut(16), dOut(17)); -- x14 = dout17 = dOut15 xor dOut16 = (m0 xor m1) xor ((m4 xor m5) xor m6) xor (m8 xor m10)

			
	x(0) <= m(0);
	
	x(1) <= m(1);
	
	x(2) <= m(2);

	x(3) <= m(3);

	x(4) <= m(4);	

	x(5) <= m(5);	

	x(6) <= m(6);
	
	x(7) <= m(7);

	x(8) <= m(8);

	x(9) <= m(9);

	x(10) <= m(10);
			
	x(11) <= dOut(5);
	
	x(12) <= dOut(8);

	x(13) <= dOut(13);
	
	x(14) <= dOut(17);


end Structural;