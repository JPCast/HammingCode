------------------------------------------------------------------------------------------------
----------------------------Full Adder----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;


entity fullAdder is
	port(a, b : in std_logic;
			cout : out std_logic);
end fullAdder;

architecture Behavioral of fullAdder is
begin
	cout <= a xor b;
end Behavioral;



------------------------------------------------------------------------------------------------
---------------------------- xor ---------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity xor_operator is
	port(a, b : in std_logic;
			cout : out std_logic);
end xor_operator;

architecture Behavioral of xor_operator is
begin
	cout <= a xor b;
end Behavioral;


------------------------------------------------------------------------------------------------
---------------------------- MUX 2_1  ----------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
	port(		sel : in std_logic;
				a   : in std_logic_vector(10 downto 0);
				b   : in std_logic_vector(3 downto 0);
			mlinha : out std_logic);
end xor_operator;

architecture Behavioral of xor_operator is
begin
	if(sel='1')
		mlinha<=a;
	else
		mlinha<=b;
	end if
end Behavioral;


------------------------------------------------------------------------------------------------
---------------------------- MUX 4_1  ----------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
	port(		sel1 : in std_logic;
				sel2 : in std_logic;
				a   : in std_logic;
				b   : in std_logic;
				c	 : in std_logic;
				d   : in std_logic;
			mlinha : out std_logic);
end xor_operator;

architecture Behavioral of xor_operator is
begin
	if (Sel1 ='0' and S2 = '0') then
      mlinha <= a;

  elsif (Sel1 ='1' and Sel2 = '0') then
		mlinha <= b;
  
  elsif (Sel1 ='0' and Sel2 = '1') then
		mlinha <= c;
  
  else
		mlinha <= d;  
  
  end if;
end  Behavioral;


-------------------------------------------------------------------------------------------------------------------
---------------------------- Flip flop Prof nao correto  ----------------------------------------------------------
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


