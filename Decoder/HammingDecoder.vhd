library IEEE;
use IEEE.std_logic_1164.all;

--biblioteca controlo
library Controlo;
use Controlo.all;

--biblioteca com componentes logicos
library Arithmetic;
use Arithmetic.all;

--biblioteca com descodificador e correçao de bit
library decoder_4_11;
use decoder_4_11.all;

entity HammingDecoder is
	port( clk     : in std_logic; 
			  y     : in std_logic;
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
	
--	component ShiftRegister
--		port (clk 	 : in std_logic;
--				input  : in std_logic;
--				enable : in std_logic;
--				output : out std_logic_vector(10 downto 0));
--	end component;

	
	component Controlo
	port(	clk      : in std_logic;
			sel_mux  : out std_logic;
			dataOut : out std_logic_vector(3 downto 0));
	end component;
	
--	component decoder_4_11
--		port( input  : in std_logic_vector(3 downto 0);
--				output : out std_logic_vector(10 downto 0));
--	end component;
--	
	signal Controlo_out : std_logic_vector(3 downto 0);
	signal s_selMux : std_logic;
	signal s_shiftOut : std_logic_vector(10 downto 0);
	signal xor_out		: std_logic_vector(3 downto 0);
	signal ff_out     : std_logic_vector(3 downto 0);
	signal s_andOut   : std_logic_vector(3 downto 0); 
	signal s_decoderOut   : std_logic_vector(10 downto 0);
	--signal s_finalOut : std_logic_vector(10 downto 0);


begin
	
	Controlo_Unidade : Controlo port map(clk, s_selMux, Controlo_out(3 downto 0));
	
	--shiftRegister1 : ShiftRegister port map(clk, y, '1', s_shiftOut);
	
	and1         	  : And_operator port map(y, Controlo_out(0), s_andOut(0));
	and2         	  : And_operator port map(y, Controlo_out(1), s_andOut(1));
	and3         	  : And_operator port map(y, Controlo_out(2), s_andOut(2));
	and4         	  : And_operator port map(y, Controlo_out(3), s_andOut(3));
	
	flipFlopD1     : flipFlopDSimul port map(clk, xor_out(0),'1','1', ff_out(0));
	flipFlopD2     : flipFlopDSimul port map(clk, xor_out(1),'1','1', ff_out(1));
	flipFlopD3     : flipFlopDSimul port map(clk, xor_out(2),'1','1', ff_out(2));
	flipFlopD4     : flipFlopDSimul port map(clk, xor_out(3),'1','1', ff_out(3));
	 
	xor1           : xor_operator port map(s_andOut(0), ff_out(0), xor_out(0));
	xor2           : xor_operator port map(s_andOut(1), ff_out(1), xor_out(1));
	xor3           : xor_operator port map(s_andOut(2), ff_out(2), xor_out(2));
	xor4           : xor_operator port map(s_andOut(3), ff_out(3), xor_out(3));
--	
--	decoder1 		: decoder_4_11 port map(xor_out, s_decoderOut);
--	
--	---
--	xor_saida1		: xor_operator port map(s_shiftOut(0), s_decoderOut(0), m_linha(0));
--	xor_saida2		: xor_operator port map(s_shiftOut(1), s_decoderOut(1), m_linha(1));
--	xor_saida3		: xor_operator port map(s_shiftOut(2), s_decoderOut(2), m_linha(2));
--	xor_saida4		: xor_operator port map(s_shiftOut(3), s_decoderOut(3), m_linha(3));
--	xor_saida5		: xor_operator port map(s_shiftOut(4), s_decoderOut(4), m_linha(4));
--	xor_saida6		: xor_operator port map(s_shiftOut(5), s_decoderOut(5), m_linha(5));
--	xor_saida7		: xor_operator port map(s_shiftOut(6), s_decoderOut(6), m_linha(6));
--	xor_saida8		: xor_operator port map(s_shiftOut(7), s_decoderOut(7), m_linha(7));
--	xor_saida9		: xor_operator port map(s_shiftOut(8), s_decoderOut(8), m_linha(8));
--	xor_saida10		: xor_operator port map(s_shiftOut(9), s_decoderOut(9), m_linha(9));
--	xor_saida11		: xor_operator port map(s_shiftOut(10), s_decoderOut(10), m_linha(10));
--

	
	m_linha(0) <= xor_out(0);
	m_linha(1) <= xor_out(1);
	m_linha(2) <= xor_out(2);
	m_linha(3) <= xor_out(3);
	


  
end Structural;