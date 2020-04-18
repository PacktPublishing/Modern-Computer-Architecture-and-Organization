__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 3, Exercise 3

Review the VHDL listing in the Arithmetic Logic Unit section in this chapter and determine if the logic for setting or clearing the V flag is correct for addition and subtraction operations. Check the results of adding 126+1, 127+1, -127+(-1), and -128+(-1).

# Answer
The listing of the VHDL implementation of a portion of a 6502-like ALU in this chapter implements the computation of the overflow flag with the following code:

    if (((LEFT(7) XOR result8(7)) = '1') AND
        ((right_op(7) XOR result8(7)) = '1')) then -- V flag
      V_OUT <= '1';
    else
      V_OUT <= '0';
    end if;

The following table shows the results of this code for the four test cases in the question:

left | right | left(7) | right(7) | result8(7) | V_OUT | Correct?
---- | ----- | ------- | -------- | ---------- | ----- | --------
126 | 1 | 0 | 0 | 0 | 0 | Yes
127 | 1 | 0 | 0 | 1 | 1 | Yes
-127 | -1 | 1 | 1 | 1 | 0 | Yes
-128 | -1 | 1 | 1 | 0 | 1 | Yes

The logic for setting or clearing the V flag is correct for these test cases.