
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;

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

  signal a             : std_logic_vector(3 downto 0);
  signal b             : std_logic_vector(3 downto 0);
  signal s             : std_logic_vector(3 downto 0);
  signal c_out         : std_logic;

  signal expected_sum5 : unsigned(4 downto 0);
  signal expected_sum4 : unsigned(3 downto 0);
  signal expected_c    : std_logic;
  signal error         : std_logic;

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

    -- Test all combinations of two 4-bit addends (256 total tests)
    for a_val in 0 to 15 loop
      for b_val in 0 to 15 loop
        -- Set the inputs to the ADDER4 component
        a <= std_logic_vector(to_unsigned(a_val, a'length));
        b <= std_logic_vector(to_unsigned(b_val, b'length));
        wait for 1 ns;

        -- Compute the 5-bit sum of the two 4-bit values
        expected_sum5 <= unsigned('0' & a) + unsigned('0' & b);
        wait for 1 ns;

        -- Break the sum into a 4-bit output and a carry bit
        expected_sum4 <= expected_sum5(3 downto 0);
        expected_c    <= expected_sum5(4);
        wait for 1 ns;

        -- The 'error' signal will only go to 1 if an error occurs
        if ((unsigned(s) = unsigned(expected_sum4)) and
            (c_out = expected_c)) then
          error <= '0';
        else
          error <= '1';
        end if;

        -- Each pass through the inner loop takes 10 ns
        wait for 7 ns;

      end loop;
    end loop;

    wait;

  end process TEST;

end architecture BEHAVIORAL;
