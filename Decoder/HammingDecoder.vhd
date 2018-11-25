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
				Q, nQ	  : OUT STD_LOGIC);
	end component;

	
	component And_operator
		port(	
				a, b : in std_logic;
				cout : out std_logic);
	end component;
	
	component xor_operator
		port(
				a, b  : in std_logic;
				cout : out std_logic);
	end component;
	
	component ShiftRegister
		port (clk 	 : in std_logic;
				input  : in std_logic;
				output : out std_logic_vector(10 downto 0));
	end component;

	
	component Controlo
	port(	clk      : in std_logic;
			dataOut : out std_logic_vector(3 downto 0));
	end component;
	
	component decoder_4_11
		port( input  : in std_logic_vector(3 downto 0);
				output : out std_logic_vector(10 downto 0));
	end component;
	
	signal s_Controlo_out : std_logic_vector(3 downto 0);
	signal s_shiftOut : std_logic_vector(10 downto 0);
	signal s_xor_out		: std_logic_vector(3 downto 0);
	signal s_ff_out     : std_logic_vector(3 downto 0);
	signal s_andOut   : std_logic_vector(3 downto 0); 
	signal s_decoderOut   : std_logic_vector(10 downto 0);
	signal s_clk   : std_logic;


begin
	-- para a utilizaçao do mesmo clk em todos os blocos criou-se um sinal
	s_clk <= clk;
	
	---Controlo de Unidade onde se encontra uma ROM com a matriz H, um contador e um somador para ir buscar as varias colunas da matriz H
	Controlo_Unidade : Controlo port map(s_clk, s_Controlo_out);
	
	--	4 ands para efetuar a operaçao com os bits series de entrada e as colunas que saem do controlo de unidade
	and1         	  : And_operator port map( y, s_Controlo_out(0), s_andOut(0));
	and2         	  : And_operator port map( y, s_Controlo_out(1), s_andOut(1));
	and3         	  : And_operator port map( y, s_Controlo_out(2), s_andOut(2));
	and4         	  : And_operator port map( y, s_Controlo_out(3), s_andOut(3));
	
	--4 xores para efetuar as operaçoes  entre o resultado das ands e o valor que se encontra nos flip flops.
	--A saida dos xors dNao entrada nos flip flops e num bloco que faz a deteçao do erro
	xor1           : xor_operator port map( s_andOut(0), s_ff_out(0), s_xor_out(0));
	xor2           : xor_operator port map( s_andOut(1), s_ff_out(1), s_xor_out(1));
	xor3           : xor_operator port map( s_andOut(2), s_ff_out(2), s_xor_out(2));
	xor4           : xor_operator port map( s_andOut(3), s_ff_out(3), s_xor_out(3));
	
	
	--flip flop com entrada as saidas dos xors devolvendo o valor que se encontra nos flip flops
	flipFlopD1     : flipFlopDSimul port map(s_clk, s_xor_out(0),'1','1', s_ff_out(0), open);
	flipFlopD2     : flipFlopDSimul port map(s_clk, s_xor_out(1),'1','1', s_ff_out(1), open);
	flipFlopD3     : flipFlopDSimul port map(s_clk, s_xor_out(2),'1','1', s_ff_out(2), open);
	flipFlopD4     : flipFlopDSimul port map(s_clk, s_xor_out(3),'1','1', s_ff_out(3), open);
	
	--decoder é um bloco que criamos para fazer a deteçao do erro.
	--internamente é constiuido por equacoes logicas
	decoder1 		: decoder_4_11 port map(s_xor_out, s_decoderOut);
	
	--o shift tem internamente 15 flip flops para guardar os bits da mensagem que entram em serie
	-- fazendo sair o vetor de 11 bits
	shiftRegister1 : ShiftRegister port map(s_clk,y,  s_shiftOut);


	-- no final para liga-se todas as saidas do shift register e decoder a xors para fazer a correçao do erro caso exista
	-- devolvendo a palavra descodificada de 11 bits
	xor_saida1		: xor_operator port map( s_shiftOut(0), s_decoderOut(0), m_linha(0));
	xor_saida2		: xor_operator port map( s_shiftOut(1), s_decoderOut(1), m_linha(1));
	xor_saida3		: xor_operator port map( s_shiftOut(2), s_decoderOut(2), m_linha(2));
	xor_saida4		: xor_operator port map( s_shiftOut(3), s_decoderOut(3), m_linha(3));
	xor_saida5		: xor_operator port map( s_shiftOut(4), s_decoderOut(4), m_linha(4));
	xor_saida6		: xor_operator port map( s_shiftOut(5), s_decoderOut(5), m_linha(5));
	xor_saida7		: xor_operator port map( s_shiftOut(6), s_decoderOut(6), m_linha(6));
	xor_saida8		: xor_operator port map( s_shiftOut(7), s_decoderOut(7), m_linha(7));
	xor_saida9		: xor_operator port map( s_shiftOut(8), s_decoderOut(8), m_linha(8));
	xor_saida10		: xor_operator port map( s_shiftOut(9), s_decoderOut(9), m_linha(9));
	xor_saida11		: xor_operator port map( s_shiftOut(10), s_decoderOut(10), m_linha(10));

  
end Structural;