__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 2, Exercise 5

Add test driver code (search the Internet to learn how) to your 4-bit adder to drive it through a limited set of input sets and verify the outputs are correct.

# Answer
Follow these steps to test the 4-bit adder project created in Exercise 4:

1. Double-click the **Vivado 2019.2** (or similar) icon to start Vivado.
2. Click **Open Project** in the Vivado main dialog and open the project you created in Exercise 4. You will need to select the project file name ending in **.xpr**.
3. Click **Add Sources** in the **Project Manager** panel, select **Add or create simulation sources**, and add **[Ex__5_adder4_testbench.vhdl](src/Ex__5_adder4_testbench.vhdl)** then click **Finish**.
4. Expand the tree in the **Simulation Sources** window in the **Project Manager** dialog and locate the file you added. Double-click the file and expand the source code window to view the code. Observe the six test cases present in the code.
5. Click **Run Simulation** in the Vivado main dialog **Project Manager** section, then select **Run behavioral simulation**.
6. Wait for the simulation to complete, then expand the windows with the timing diagram (probably labeled **Untitled 1**).
7. Use the magnifying class icons and the window horizontal scroll bar to view the six test cases in the first 60ns of execution. Determine if the sum and carry for each addition operation are correct. You can drag the yellow marker to update the information in the **Value** column.
8. This completes the exercise. You may close Vivado.
