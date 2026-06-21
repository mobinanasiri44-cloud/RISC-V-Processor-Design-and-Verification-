# RISC-V-Processor-Design-and-Verification-

Overview
This project presents the design, implementation, and verification of a single-cycle RISC-V processor using VHDL in Xilinx Vivado.
The processor datapath was developed by integrating the Program Counter (PC), Instruction Memory, Register File, Immediate Generator (ImmGen), Arithmetic Logic Unit (ALU), Data Memory (DMEM), multiplexers, and control logic. Functional verification was performed through RTL simulation and custom testbenches.
The project was completed as part of a Digital Systems Design course and focuses on processor architecture, datapath implementation, instruction execution, memory operations, and hardware verification.
________________________________________
Features
•	Single-cycle RISC-V processor implementation
•	VHDL-based hardware design
•	Datapath architecture development
•	ALU implementation and verification
•	Register File implementation
•	Immediate Generator (ImmGen)
•	Data Memory integration
•	RTL simulation using Xilinx Vivado
•	Functional verification through custom testbenches
•	Memory access validation (Load/Store)
•	Write-back and register update verification
________________________________________
Repository Structure
datapath/     : Processor datapath architecture
simulation/   : RTL simulation waveforms and verification results
report/       : Final project report
src/          : VHDL source files
testbench/    : Verification testbenches
________________________________________
Processor Datapath
The implemented datapath includes:
•	Program Counter (PC)
•	Instruction Memory (IMEM)
•	Register File
•	Immediate Generator (ImmGen)
•	Arithmetic Logic Unit (ALU)
•	Data Memory (DMEM)
•	Operand selection multiplexers
•	Write-back selection logic
•	Control Unit
The complete datapath diagram is available in the datapath/ directory.
________________________________________
Verification Scenarios
The processor was verified using RTL simulation through several instruction execution scenarios.
________________________________________
Scenario 1 – Register Initialization
addi x1, x0, 5
addi x2, x0, 10
addi x3, x0, 7
add x4, x1, x2
add x5, x4, x3
Purpose:
This scenario verifies immediate generation, register write-back, and ALU arithmetic operations. It demonstrates correct execution of chained arithmetic instructions and dependency handling between registers.
Verified functionality:
•	Immediate generation (addi)
•	ALU addition operations (add)
•	Register file write-back
•	Data dependency handling between sequential instructions
Waveform:
scenario_1_register_initialization_x1.png
________________________________________
Scenario 2 – Register Initialization
addi x1, x0, 12
addi x2, x0, 10
and x3, x1, x2
or x4, x1, x2
Purpose:
This scenario validates logical ALU operations in addition to immediate loading. It demonstrates correct execution of bitwise AND and OR instructions.
Verified functionality:
•	Immediate generation
•	Bitwise AND operation
•	Bitwise OR operation
•	Register file update
•	ALU logical instruction execution
Waveform:
scenario_2_register_initialization_x2.png
________________________________________
Scenario 3 – Memory Store Operation
addi x1, x0, 20
addi x2, x1, -5
andi x3, x1, 0x0F
ori x4, x2, 0x01
Purpose:
This scenario verifies ALU operations involving arithmetic and bitwise immediate instructions. It focuses on correct execution of immediate-based logic and arithmetic transformations rather than memory access.
Verified functionality:
•	Immediate arithmetic (addi with offset)
•	Bitwise AND immediate (andi)
•	Bitwise OR immediate (ori)
•	ALU operation correctness
•	Register update consistency
Waveform:
scenario_3_memory_store_operation.png
________________________________________
Scenario 4 – Memory Load Operation
addi x1, x0, 8
addi x2, x0, 42
sw x2, 0(x1)
addi x1, x1, -3
lw x3, 3(x1)
Purpose:
This scenario validates memory write and read operations. It demonstrates correct data storage into memory and subsequent retrieval using address manipulation.
Verified functionality:
•	Memory store operation (sw)
•	Memory load operation (lw)
•	Address computation
•	Signed immediate handling
•	Register write-back from memory
•	ALU-based address generation
Waveform:
scenario_4_memory_load_operation.png
________________________________________
Simulation Results
The simulation waveforms demonstrate:
•	Correct instruction execution
•	Register updates
•	Memory write operations
•	Memory read operations
•	Address generation
•	ALU functionality
•	Write-back behavior
Each waveform represents a specific verification scenario and together provides functional validation of the processor datapath.
________________________________________
Development Tools
•	VHDL
•	Xilinx Vivado
________________________________________
Documentation
A detailed report describing the processor architecture, implementation methodology, and verification results is available in:
report/RISCV_Processor_Report.pdf
________________________________________
Educational Purpose
This repository was developed as an academic project to explore processor architecture, digital design, hardware description languages, datapath implementation, and RTL verification using VHDL.
