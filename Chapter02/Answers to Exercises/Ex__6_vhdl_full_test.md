__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 2, Exercise 6

Expand the test driver code and verify the 4-bit adder produces correct results for all possible combinations of inputs.

# Answer
Follow these steps to test the 4-bit adder project created in Exercise 4:

1. Double-click the **Vivado 2019.2** (or similar) icon to start Vivado.
2. Click **Open Project** in the Vivado main dialog and open the project you created in Exercise 4 and modified in Exercise 5. You will need to select the project file name ending in **.xpr**.
3. We're going to replace the test driver code from Exercise 5 with a different test driver. Expand the tree in the **Simulation Sources** window in the **Project Manager** dialog and locate the module you added in Exercise 5 (**ADDER4_TESTBENCH**). Right-click the module name and select **Remove File from Project**, then click OK to confirm the removal.
3. Click **Add Sources** in the **Project Manager** panel, select **Add or create simulation sources**, and add **[Ex__6_adder4_fulltestbench.vhdl](src/Ex__6_adder4_fulltestbench.vhdl)** then click **Finish**.
4. Expand the tree in the **Simulation Sources** window in the **Project Manager** dialog and locate the file you added. Double-click the file and expand the source code window to view the code. Observe the loop with 256 test cases in the code.
5. Click **Run Simulation** in the Vivado main dialog **Project Manager** section, then select **Run behavioral simulation**.
6. Wait for the simulation to complete, then expand the windows with the timing diagram (probably labeled **Untitled 1**).
7. Use the magnifying class icons and the window horizontal scroll bar to view the test cases. Uh-oh! The run stops after 1000ns, which isn't enough time for all of the tests to execute.
8. Right-click **Simulation** in the **Project Manager** panel, then select **Simulation Settings...**
9. Click the **Simulation** tab and change the value for **xsim.simulate.runtime** to **3000ns**. Click **OK**.
10. Click the **X** on the **Simulation** window to close the simulation.
11. Re-run the simulation.
12. After expanding and scaling the timing diagram, you will be able to see all 256 test cases. See if the **error** signal has a value of **1** anywhere along the trace. This would indicate the adder's output did not match the expected output
13. This completes the exercise. You may close Vivado.
