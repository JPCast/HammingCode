library Controlo;

-------------------------------------------------------------------------------------------------------------
---------------------------------------Controlo Unit---------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity Controlo is
	port(	clk      : in std_logic;
			sel_mux  : out std_logic;
			dataOut : out std_logic_vector(3 downto 0));
end Controlo;

architecture Structural of Controlo is

	component Counter
		port( clk : in std_logic;
				a :  in std_logic_vector(3 downto 0);
				s: out std_logic_vector(3 downto 0));
	end component;
	
	
	component FullAdder4bit
		port(a, b  : in std_logic_vector(3 downto 0);
				cin : in std_logic;
				cout: out std_logic;
				s  : out std_logic_vector(3 downto 0));
	end component;
	
	component ROM
		port( address : in std_logic_vector(3 downto 0);
				dataOut : out std_logic_vector(0 to 3));
	end component;
	
	
	signal s_count : std_logic_vector(3 downto 0) := "0000";
	signal s_cout  : std_logic_vector(3 downto 0) := "0000";
	
	
begin
	
	Counter2: FullAdder4bit port map(s_count,"0000",'0',sel_mux ,s_cout);
	Counter1: Counter port map(clk, s_cout, s_count);
	Matrix_H : ROM port map(s_cout, dataOut);
	

end Structural;

-------------------------------------------------------------------------------------------------------------
--------------------------------------ROM--------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ROM is
	port(address : in std_logic_vector(3 downto 0);
		  dataOut : out std_logic_vector(0 to 3));
end ROM;

architecture Behavior of ROM is
	constant colunm1 : std_logic_vector(0 to 14) := "100100111111000";
	constant colunm2 : std_logic_vector(0 to 14) := "011001011110100";
   constant colunm3 : std_logic_vector(0 to 14) := "001111100110010";
   constant colunm4 : std_logic_vector(0 to 14) := "110011101010001";
	
begin
	dataOut(0) <= colunm1(to_integer(unsigned(address)));
	dataOut(1) <= colunm2(to_integer(unsigned(address)));
	dataOut(2) <= colunm3(to_integer(unsigned(address)));
	dataOut(3) <= colunm4(to_integer(unsigned(address)));

	
end Behavior;
-------------------------------------------------------------------------------------------------------------
----------------------------------------Full Adder 4 bits ----------------------------------------------------------

Library IEEE;
use IEEE.STD_Logic_1164.all;

entity FullAdder4bit is
port(a, b  : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		cout: out std_logic;
		s  : out std_logic_vector(3 downto 0));

end FullAdder4bit;

architecture Structure of FullAdder4bit is
	signal s_carryOut: std_logic_vector(2 downto 0);
	
	component FullAdder
	port (a, b, cin : in std_logic;
			s, cout: out std_logic);
	end component;
	
begin

	bit0: FullAdder port map(a => a(0),
										b => b(0),
										cin => cin,
										s => s(0),
										cout => s_carryOut(0));
					
	bit1: FullAdder port map(a => a(1),
									b => b(1),
									cin => s_carryOut(0),
									s => s(1),
									cout => s_carryOut(1));
	
	bit2: FullAdder port map(a => a(2),
									b=> b(2),
									cin => s_carryOut(1),
									s => s(2),
									cout => s_carryOut(2));

	bit3: FullAdder port map(a => a(3),
									b=> b(3),
									cin => s_carryOut(2),
									s => s(3),
									cout => cout);

end Structure;

-------------------------------------------------------------------------------------------------------------
----------------------------------------Full Adder ----------------------------------------------------------



Library IEEE;
use IEEE.STD_Logic_1164.all;

entity FullAdder is
port( a, b, cin : in std_logic;
		s, cout: out std_logic);

end FullAdder;

architecture Behavioral of FullAdder is
	
begin
	s <= a xor b xor cin;
	cout <= (a and b) or(cin and (a or b));
	
end Behavioral;


-------------------------------------------------------------------------------------------------------------
-------------------------------------Counter automatico------------------------------------------------------


Library IEEE;
use IEEE.STD_Logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Counter is
port( clk : in std_logic;
		a :  in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0));

end Counter;

architecture Behavioral of Counter is
	
begin
	process(clk)
	begin
	if(rising_edge(clk)) then
		s <= a + 1;
	end if;
	
	end process;
end Behavioral;

