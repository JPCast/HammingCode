library decoder_4_11;

library IEEE;
use IEEE.std_logic_1164.all;

library Arithmetic;
use Arithmetic.all;

entity decoder_4_11 is
	port( input  : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(10 downto 0));
end decoder_4_11;
	
architecture structural of decoder_4_11 is
	component And_operator
	port(a, b : in std_logic;
			cout : out std_logic);
	end component;
	signal s : std_logic_vector(8 downto 0);
begin
	-- Output(0)
	output_0_1 : and_operator port map(not input(3), not input(2), s(0)); -- not a3 and not a2 = s(0)
	output_0_2 : and_operator port map(s(0), not input(1), s(1));			 -- (not a3 and not a2) and not a1 = s(1)
	output_0_3 : and_operator port map(s(1), input(0), output(0));			 -- ((not a3 and not a2) and not a1) and a0 = output(0)
	
	-- Output(1)
	output_1_1 : and_operator port map(s(0), input(1), s(2));				-- (not a3 and not a2) and  a1 = s(2)
	output_1_2 : and_operator port map(s(2), not input(0), output(1));	-- ((not a3 and not a2) and  a1) and not a0 = output(1)
	
	-- Output(2)		
	output_2_1 : and_operator port map(s(2), input(0), output(2));			-- ((not a3 and not a2) and  a1) and  a0 = output(2)
	
	-- Output(3)
	output_3_1 : and_operator port map(not input(3), input(2), s(3));		-- not a3 and a2 = s(3)
	output_3_2 : and_operator port map(s(3), not input(1), s(4));			-- (not a3 and a2) and not a1 = s(4)
	output_3_3 : and_operator port map(s(4), not input(0), output(3));	-- ((not a3 and a2) and not a1) and not a0 = output(3)
	
	-- Output(4)
	output_4_1 : and_operator port map(s(4), input(0), output(4));			-- ((not a3 and a2) and not a1) and a0 = output(4)
	
	-- Output(5)
	output_5_1 : and_operator port map(s(3), input(1), s(5));           	-- (not a3 and a2) and a1 = s(5) 
	output_5_2 : and_operator port map(s(5), not input(0), output(5));   -- ((not a3 and a2) and a1) and not a0 = output(5)
	
	-- Output(6)			
	output_6_3 : and_operator port map(s(5), input(0), output(6));			-- ((not a3 and a2) and a1) and a0 = output(6)
	
	-- Output(7)
	output_7_1 : and_operator port map(input(3), not input(2), s(6));		-- a3 and not a2 = s(6)
	output_7_2 : and_operator port map(s(6), not input(1), s(7));			-- (a3 and not a2) and not a1 = s(7)
	output_7_3 : and_operator port map(s(7), not input(0), output(7));	-- ((a3 and not a2) and not a1) and not a0 = output(7)
	
	-- Output(8)
	output_8_1 : and_operator port map(s(7), input(0), output(8));			-- ((a3 and not a2) and not a1) and a0 = output(8)
	
	-- Output(9)
	output_9_1 : and_operator port map(s(6), input(1), s(8));				-- (a3 and not a2) and a1 = s(8)
	output_9_2 : and_operator port map(s(8), not input(0), output(9));	-- ((a3 and not a2) and a1) and not a0 = output(9)
	
	-- Output(10)
	output_10_3 : and_operator port map(s(8), input(0), output(10));		-- ((a3 and not a2) and a1) and a0 = output(10)
	
end structural;
	