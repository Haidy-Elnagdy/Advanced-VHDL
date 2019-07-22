                                           18ELEC17I: Digital Electronics
                                       Lab (1): Getting Started with ModelSim
Objective  
  •	Build and compile a logic gate and simulate it using ModelSim. 
  •	Learn how to create a macro file for the simulation. 
Equipment 
  A computer with ModelSim installed. 
Procedure 
  A)	Getting Started 
   1-	Create a folder in your "C" drive and name it "projects". 
   2-	Open ModelSim and create a new project: File => New project 
    •	In "Project Name", write "labs". 
    •	In "Project Location", browse to the folder created in first step then add “/labs” to the path. 
    •	Click Ok, then Ok again to create the folder
  B)	Creating Required Design Unit (AND gate) 
   1-	Choose: Create New File from the below window

   2-	In the window below, fill the "File Name" with and_2bit, keep file type as VHDL 


   3-	Close the "Add items to the Project" window 
   4-	Double click on the file “and_2bit.vhd” in the left pane, the file will be opened for edit on the right pane
   5-	Fill with the following code:
     library ieee; 
     use ieee.std_logic_1164.all; 
     use ieee.std_logic_arith.all; 
 
     entity and_2bit IS 
       port (a,b: in std_logic; 
                     y: out std_logic); 
      end and_2bit ; 
      architecture rtl of and_2bit is 
     begin
        y <=  a and b; 
     end rtl;
   6-	Save your design
    C)	Compiling and selecting the design for simulation
      1-	Select your design unit, then compile it by clicking on 
      2-	If the file was successfully compiled, you should get a message in the Transcript window:
      3-	"# Compile of and_2bit.vhd was successful."
      4-	From the library tab, Select your design unit from the work library and right click the mouse and select Simulate
      5-	Or simply click the simulate icon from the menu
      6-	From the below window, expand the work library, then select the design "and2_bit", then click "OK"
   D)	ModelSim Simulation 
      1-	In the ModelSim window, click: view => signals 
      2-	In the Objects window: 
        •	Right Click on the 'a' signal: Modify => Force => Value: 0, Delay For: 0 => Ok  
        •	Right Click on the 'a' signal: Modify => Force => Value: 1, Delay For: 100 => Ok 
        •	Right Click on the 'a' signal: Modify => Force => Value: 0, Delay For: 200 => Ok 
        •	Right Click on the 'a' signal: Modify => Force => Value: 1, Delay For: 300 => Ok 
        •	Right Click on the 'b' signal: Modify => Force => Value: 0, Delay For: 0 => Ok 
        •	Right Click on the 'b' signal: Modify => Force => Value: 1, Delay For: 200 => Ok 

      3-	In the wave window, 
        •	Press "run" several times till you reach about 400ps.   
        •	Press "zoom full" to see the whole wave.  
        •	Your wave should look like the figure below.  
 
      4-	To save your forces in a macro file:  
                •	Copy the set of commands from the ModelSim Transcript Window. 

        force -freeze sim:/and_2bit/a 0 0
        force -freeze sim:/and_2bit/a 1 100
        force -freeze sim:/and_2bit/a 1 200
        force -freeze sim:/and_2bit/a 1 300
        force -freeze sim:/and_2bit/b 0 0
        force -freeze sim:/and_2bit/b 1 200

        •	Open the "labs" folder from your projects directory and create a new text file. (C:\projects\labs\) 
        •	Paste the commands in the file and save it under the name "forces_and_2bit.do"  
    If the extension name does not change do the following:  
        i.	Open Folder options by clicking the Start button => control panel => appearance and personalization => folder options. 
        ii.	Click the view tab and then under advanced settings clear the “Hide extensions for known file types” check box and then                 click OK. 
      5-	To test the macro file, restart the simulation by pressing the restart button 
      6-	From the menu:  Click Tools => TCL => Execute Macro => select the "forces_and_2bit.do" file. Then view the signals and run the          simulation.
      7-	To exit Simulation: Click Simulate => End Simulation
