-- Load the standard libraries

library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

-- Define the 4-bit adder inputs and outputs

entity ADDER4 is
  port (
    A4        : in    std_logic_vector(3 downto 0);
    B4        : in    std_logic_vector(3 downto 0);
    SUM4      : out   std_logic_vector(3 downto 0);
    C_OUT4    : out   std_logic
  );
end entity ADDER4;

-- Define the behavior of the 4-bit adder

architecture BEHAVIORAL of ADDER4 is

  -- Reference the previous definition of the full adder

  component FULL_ADDER is
    port (
      A             : in    std_logic;
      B             : in    std_logic;
      C_IN          : in    std_logic;
      S             : out   std_logic;
      C_OUT         : out   std_logic
    );
  end component;

  -- Define the signals used internally in the 4-bit adder
  signal c0, c1, c2 : std_logic;

begin

  -- The carry input to the first adder is set to 0
  FULL_ADDER0 : FULL_ADDER
    port map (
      A          => A4(0),
      B          => B4(0),
      C_IN       => '0',
      S          => SUM4(0),
      C_OUT      => c0
    );

  FULL_ADDER1 : FULL_ADDER
    port map (
      A          => A4(1),
      B          => B4(1),
      C_IN       => c0,
      S          => SUM4(1),
      C_OUT      => c1
    );

  FULL_ADDER2 : FULL_ADDER
    port map (
      A          => A4(2),
      B          => B4(2),
      C_IN       => c1,
      S          => SUM4(2),
      C_OUT      => c2
    );

  FULL_ADDER3 : FULL_ADDER
    port map (
      A          => A4(3),
      B          => B4(3),
      C_IN       => c2,
      S          => SUM4(3),
      C_OUT      => C_OUT4
    );

end architecture BEHAVIORAL;
