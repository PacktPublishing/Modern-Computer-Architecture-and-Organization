
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity ADDER4_TESTBENCH is
end entity ADDER4_TESTBENCH;

architecture BEHAVIORAL of ADDER4_TESTBENCH is

  component ADDER4 is
    port (
      A4        : in    std_logic_vector(3 downto 0);
      B4        : in    std_logic_vector(3 downto 0);
      SUM4      : out   std_logic_vector(3 downto 0);
      C_OUT4    : out   std_logic
    );
  end component;

  signal a     : std_logic_vector(3 downto 0);
  signal b     : std_logic_vector(3 downto 0);
  signal s     : std_logic_vector(3 downto 0);
  signal c_out : std_logic;

begin

  TESTED_DEVICE : ADDER4
    port map (
      A4     => a,
      B4     => b,
      SUM4   => s,
      C_OUT4 => c_out
    );

  TEST : process
  begin
    a <= "0000";
    b <= "0000";

    wait for 10 ns;
    a <= "0110";
    b <= "1100";

    wait for 10 ns;
    a <= "1111";
    b <= "1100";

    wait for 10 ns;
    a <= "0110";
    b <= "0111";

    wait for 10 ns;
    a <= "0110";
    b <= "1110";

    wait for 10 ns;
    a <= "1111";
    b <= "1111";

    wait;

  end process TEST;

end architecture BEHAVIORAL;
