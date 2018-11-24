library IEEE;
use IEEE.std_logic_1164.all;

--biblioteca controlo
library Controlo;
use Controlo.all;

--biblioteca com componentes logicos
library Arithmetic;
use Arithmetic.all;

entity HammingDecoder is
	port( clk     : in std_logic; 
			  y     : in std_logic_vector(14 downto 0);
			m_linha : out std_logic_vector(10 downto 0));
	end HammingDecoder;


architecture Structural of HammingDecoder is
	
	component flipFlopDSimul
		port (clk, D     : IN STD_LOGIC;
				nSet, nRst : IN STD_LOGIC;
				Q, nQ		  : OUT STD_LOGIC);
	end component;

	
	component And_operator
		port(a, b  : in std_logic;
				cout : out std_logic);
	end component;
	
	component xor_operator
		port(a, b  : in std_logic;
				cout : out std_logic);
	end component;
	
--	component mux2_1
--	port(		sel : in std_logic;
--				a   : in std_logic_vector(10 downto 0);
--				b   : in std_logic_vector(3 downto 0);
--			mlinha : out std_logic);
--	end component;
	
	component ShiftRegister
		port (clk 	 : in std_logic;
				input  : in std_logic;
				enable : in std_logic;
				output : out std_logic);
	end component;

	
	component Controlo
	port(	clk      : in std_logic;
			sel_mux  : out std_logic;
			dataOut : out std_logic_vector(3 downto 0));
	end component;
	
	signal Controlo_out : std_logic_vector(3 downto 0);
	signal s_selMux, s_shiftOut : std_logic;
	signal xor_out1, xor_out2, xor_out3, xor_out4 : std_logic;
	signal ff_out1, ff_out2, ff_out3, ff_out4     : std_logic;
	signal s_andOut1, s_andOut2, s_andOut3, s_andOut4 : std_logic; 


begin
	
	Controlo_Unidade : Controlo port map(clk, s_selMux, Controlo_out(3 downto 0));
	
	shiftRegister1 : ShiftRegister port map(clk, y, '1', s_shiftOut);
	
	adder1         : And_operator port map(s_shiftOut, Controlo_out(0), s_andOut1);
	adder2         : And_operator port map(s_shiftOut, Controlo_out(1), s_andOut2);
	adder3         : And_operator port map(s_shiftOut, Controlo_out(2), s_andOut3);
	adder4         : And_operator port map(s_shiftOut, Controlo_out(3), s_andOut4);
	
	flipFlopD1     : flipFlopDSimul port map(clk,xor_out1,'1','1', ff_out1);
	flipFlopD2     : flipFlopDSimul port map(clk,xor_out2,'1','1', ff_out2);
	flipFlopD3     : flipFlopDSimul port map(clk,xor_out3,'1','1', ff_out3);
	flipFlopD4     : flipFlopDSimul port map(clk,xor_out4,'1','1', ff_out4);
	 
	xor1           : xor_operator port map(s_andOut1, ff_out1, xor_out1);
	xor2           : xor_operator port map(s_andOut2, ff_out2, xor_out2);
	xor3           : xor_operator port map(s_andOut3, ff_out3, xor_out3);
	xor4           : xor_operator port map(s_andOut4, ff_out4, xor_out4);
	
	
	


  
end Structural;