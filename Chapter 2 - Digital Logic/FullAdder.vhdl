-- Load the standard libraries

library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

-- Define the full adder inputs and outputs

entity FULL_ADDER is
  port (
    A     : in    std_logic;
    B     : in    std_logic;
    C_IN  : in    std_logic;
    S     : out   std_logic;
    C_OUT : out   std_logic
  );
end entity FULL_ADDER;

-- Define the behavior of the full adder

architecture BEHAVIORAL of FULL_ADDER is

begin

  S     <= (A XOR B) XOR C_IN;
  C_OUT <= (A AND B) OR ((A XOR B) AND C_IN);

end architecture BEHAVIORAL;
