__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 2, Exercise 4

Using your VHDL tool set, implement the 4-bit adder using the code listings presented in this chapter.

# Answer
Follow these steps to implement the 4-bit adder:

1. Double-click the **Vivado 2019.2** (or similar) icon to start Vivado.
2. Click **Create Project** in the Vivado main dialog.
3. Click **Next** to accept the default project name and location.
4. Select **RTL Project**, the default project type.
5. On the **Default Part** page, select the **Boards** tab. Type **Arty** in the search field and select the **Arty A7-35** then click **Next**. If **Arty** does not appear after searching, click **Update Board Repositories** and then search again.
6. Click **Finish** to create the project.
7. Click **Add Sources** in the **Project Manager** panel, select **Add or create design sources**, and add **[Ex__4_adder4.vhdl](src/Ex__4_adder4.vhdl)** and **[Ex__4_fulladder.vhdl](src/Ex__4_fulladder.vhdl)** then click **Finish**.
8. Expand the tree in the **Design Sources** window in the **Project Manager** dialog and locate the two files you added. Double-click each of them and expand the source code window to view the code.
9. Click **Run Synthesis** in the **Project Manager** panel. Leave the options in the **Launch Runs** dialog at their defaults and click **OK**. The **Design Runs** panel will update the status as synthesis proceeds.
10. Wait for the synthesis to complete, then select **View Reports** in the **Synthesis Completed** dialog. Double-click some of the reports produced during the synthesis process. Only the reports that have an icon with a green dot are present.
11. This completes the exercise. You may close Vivado.
