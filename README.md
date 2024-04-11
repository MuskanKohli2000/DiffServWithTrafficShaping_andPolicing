# DiffServWithTrafficShaping_andPolicing
Implementation of Differentiated Service (DiffServ), alongside Traffic Shaping and Policing mechanisms, within a network infrastructure. 

The objective of this project is to demonstrate network simulation using OMNeT++ with a focus on specific scenarios and performance evaluations. We aim to model and simulate various networking protocols, traffic scenarios, and quality of service (QoS) parameters to analyze their impact on network behavior and efficiency.

Technical Details:

We are using omnetpp-5.6.2 version and inet-4.2.5 version.

We utilized OMNet++ along with the INET framework to construct a network topology of 11 routers, and two standard hosts, labeled H1 and H2. 

Components:-

The files `package.ned`, `omnetpp.ini`, `filters.xml`, and `ospfconfig.xml` are important files within an OMNeT++ simulation project and are considered essential components of the simulation setup. Here's a breakdown of each file and its role:
1.  package.ned:  This file is a Network Description (NED) file that defines the network topology and module composition for your OMNeT++ project. It specifies the structure of the simulation model, including the arrangement of compound and simple modules, their connections (channels), parameters, and configurations.
2.  omnetpp.ini: The `omnetpp.ini` file is an initialization (INI) file used to configure simulation parameters and experiment settings. It includes configurations such as simulation time, module parameters, experimental setups (e.g., application types, network configurations), and simulation-specific details.
3.  filters.xml: This file is used to define filters for simulation result recording and output. It specifies criteria for selecting and filtering specific simulation data or events to be recorded or processed during simulation execution and result analysis.
4.  ospfconfig.xml: The `ospfconfig.xml` file is used specifically for configuring the Open Shortest Path First (OSPF) routing protocol within your network simulation. It defines OSPF configuration settings such as area definitions, address ranges, router settings, and link parameters required for OSPF behaviour and operation within the simulated network.

To run a project in OMNeT++, follow these steps:

Step 1: Make sure that OMNeT++ is installed and configured correctly on your system.

Step 2: Open/ Launch the OMNeT++ Integrated Development Environment (IDE) by using the desktop shortcut.

Step 3: Import the project and INET in the IDE

Step 4: Build the project to compile the simulation model and generate the necessary executable files. Right-click on the project folder in the IDE and select "Build Project" or use the build command from the toolbar.

Step 5: To run the simulation, Right-click on the omnetpp.ini file or the project folder and select "Run As" > "OMNeT++ Simulation".
Step 6: After that a new window of OMNeT++ Qtenv will open where a pop-up box “Set Up Inifile Configuration” will appear. You can select different experiments and click on “OK”.
Step 7: To run the simulation click on the “RUN” button or select Run command from Simulate.
Step 8: After running the simulation, a results folder will be created in the src folder where you can analyze the results. You can also create an “anf” file to see the results by clicking on the “.sca” file in the results folder.

