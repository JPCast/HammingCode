library IEEE;
use IEEE.std_logic_1164.all;


entity HammingDecoder is
	port(  y      : in std_logic_vector(14 downto 0);
			clk     : in std_logic;
			m_linha : out std_logic_vector(10 downto 0));
end HammingDecoder;


architecture Structural of HammingDecoder is
begin
	
  
end Structural;