library Arithmetic;

------------------------------------------------------------------------------------------------
---------------------------- Adder -------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;


entity And_operator is
	port(a, b : in std_logic;
			cout : out std_logic);
end And_operator;

architecture Behavior of And_operator is
begin
	cout <= a and b;
end Behavior;



------------------------------------------------------------------------------------------------
---------------------------- xor ---------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity xor_operator is
	port(a, b : in std_logic;
			cout : out std_logic);
end xor_operator;

architecture Behavior of xor_operator is
begin
	cout <= a xor b;
end Behavior;


------------------------------------------------------------------------------------------------
---------------------------- MUX 2_1  ----------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2_1 is
	port(		sel : in std_logic;
				a   : in std_logic;
				b   : in std_logic;
			mlinha : out std_logic);
end mux2_1;

architecture Behavior of mux2_1 is
begin
	mlinha <= ((a and (not sel)) or (b and sel));
end Behavior;



-------------------------------------------------------------------------------------------------------------------
---------------------------- Flip flop D---------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopDSimul IS
  PORT (clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
END flipFlopDSimul;

ARCHITECTURE behavior OF flipFlopDSimul IS
BEGIN
  PROCESS (clk, nSet, nRst)
  BEGIN
    IF (nRst = '0')
        THEN Q <= '0';
             nQ <= '1';
        ELSIF (nSet = '0')
              THEN Q <= '1';
                   nQ <= '0';
              ELSIF (clk = '1') AND (clk'EVENT)
                    THEN Q <= D;
                         nQ <= NOT D;
    END IF;
  END PROCESS;
END behavior;

--------------------------------------------------------------------------------------------------------------------
-------------------------------Shift Register-----------------------------------------------------------------------
Library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
	port (clk 	 : in std_logic;
			input  : in std_logic;
			enable : in std_logic;
			output : out std_logic);
end ShiftRegister;

architecture structural of ShiftRegister is
	component flipFlopDSimul
		port(clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
	end component;
	signal connect : std_logic_vector(13 downto 0);
begin
	flipflop_1  : flipFlopDSimul port map(clk, input, '1', '1', connect(0));
	flipflop_2  : flipFlopDSimul port map(clk, connect(0), '1', '1', connect(1));
	flipflop_3  : flipFlopDSimul port map(clk, connect(1), '1', '1', connect(2));
	flipflop_4  : flipFlopDSimul port map(clk, connect(2), '1', '1', connect(3));
	flipflop_5  : flipFlopDSimul port map(clk, connect(3), '1', '1', connect(4));
	flipflop_6  : flipFlopDSimul port map(clk, connect(4), '1', '1', connect(5));
	flipflop_7  : flipFlopDSimul port map(clk, connect(5), '1', '1', connect(6));
	flipflop_8  : flipFlopDSimul port map(clk, connect(6), '1', '1', connect(7));
	flipflop_9  : flipFlopDSimul port map(clk, connect(7), '1', '1', connect(8));
	flipflop_10 : flipFlopDSimul port map(clk, connect(8), '1', '1', connect(9));
	flipflop_11 : flipFlopDSimul port map(clk, connect(9), '1', '1', connect(10));
	flipflop_12 : flipFlopDSimul port map(clk, connect(10), '1', '1', connect(11));
	flipflop_13 : flipFlopDSimul port map(clk, connect(11), '1', '1', connect(12));
	flipflop_14 : flipFlopDSimul port map(clk, connect(12), '1', '1', connect(13));
	flipflop_15 : flipFlopDSimul port map(clk, connect(13), '1', '1', output);

end structural;

			


