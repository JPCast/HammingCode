library Adder;

------------------------------------------------------------------------------------------------
---------------------------- Adder -------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;


entity Adder is
	port(a, b : in std_logic;
			cout : out std_logic);
end Adder;

architecture Behavior of Adder is
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

