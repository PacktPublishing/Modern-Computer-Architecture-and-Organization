Replace the code listing with this (there should be no broken lines):

-- Load the standard libraries

library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;

-- Define the 8-bit ALU inputs and outputs

entity ALU is
  port (
    -- Left operand
    LEFT        : in    std_logic_vector(7 downto 0);
    -- Right operand
    RIGHT       : in    std_logic_vector(7 downto 0);
    -- ALU operation
    OPCODE      : in    std_logic_vector(3 downto 0);
    -- Carry input
    C_IN        : in    std_logic;
    -- ALU output
    RESULT      : out   std_logic_vector(7 downto 0);
    -- Carry output
    C_OUT       : out   std_logic;
    -- Negative flag output
    N_OUT       : out   std_logic;                    
    -- Overflow flag output
    V_OUT       : out   std_logic;                    
    -- Zero flag output
    Z_OUT       : out   std_logic                     
  );
end entity ALU;

-- Define the behavior of the 8-bit ALU

architecture BEHAVIORAL of ALU is

begin

  P_ALU : process (LEFT, RIGHT, OPCODE, C_IN) is

    variable result8  : unsigned(7 downto 0);
    variable result9  : unsigned(8 downto 0);
    variable right_op : unsigned(7 downto 0);

  begin

    case OPCODE is

      when "0000" | "0001" => -- Addition or subtraction

        if (OPCODE = "0000") then
          right_op := unsigned(RIGHT);     -- Addition
        else
          right_op := unsigned(not RIGHT); -- Subtraction
        end if;

        result9 := ('0' & unsigned(LEFT)) +
                   unsigned(right_op) +
                   unsigned(std_logic_vector'(""& C_IN));
        result8 := result9(7 downto 0);

        C_OUT <= result9(8);               -- C flag

        -- V flag
        if (((LEFT(7) XOR result8(7)) = '1') AND
            ((right_op(7) XOR result8(7)) = '1')) then
          V_OUT <= '1';
        else
          V_OUT <= '0';
        end if;

      when "0010" =>                          -- Increment
        result8 := unsigned(LEFT) + 1;
      when "0011" =>                          -- Decrement
        result8 := unsigned(LEFT) - 1;
      when "0101" =>                          -- Bitwise AND
        result8 := unsigned(LEFT and RIGHT);
      when "0110" =>                          -- Bitwise OR
        result8 := unsigned(LEFT or RIGHT);
      when "0111" =>                          -- Bitwise XOR
        result8 := unsigned(LEFT xor RIGHT);
      when others =>
        result8 := (others => 'X');

    end case;

    RESULT <= std_logic_vector(result8);

    N_OUT <= result8(7);                      -- N flag

    if (result8 = 0) then                     -- Z flag
      Z_OUT <= '1';
    else
      Z_OUT <= '0';
    end if;

  end process P_ALU;

end architecture BEHAVIORAL;
