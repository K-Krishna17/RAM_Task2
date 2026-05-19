# INTERACTIVE- Synchronous RAM Design

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: KOTHURI MURALI KRISHNA 

*INTERN ID*: CTIS9479

*DOMAIN*: VLSI

*DURATION*: 6 WEEEKS

*MENTOR*: NEELA SANTOSH


# Description

To design and implement a Simple Synchronous RAM using Verilog HDL with:

-> Read Operation

-> Write Operation

-> Clock Synchronization

and verify its functionality using a testbench simulation.


Synchronous RAM:

In Synchronous RAM, all operations occur only at the:

-> Data is written only when clock rises

-> Data is read only when clock rises


Ram Specifications:

| Parameter     | Value           |
| ------------- | --------------- |
| Memory Type   | Synchronous RAM |
| Data Width    | 8-bit           |
| Address Width | 4-bit           |
| Memory Depth  | 16 Locations    |
| Clock Edge    | Positive Edge   |
| Operations    | Read & Write    |


Timing Behavior:

During Write

-> we = 1

-> Data stored on rising edge

During Read

-> we = 0

-> Data appears at output on rising edge


Functional Table:

| Clock Edge | WE | Address | Data In | Operation | Data Out |
| ---------- | -- | ------- | ------- | --------- | -------- |
| ↑          | 1  | 2       | 25      | Write     | X        |
| ↑          | 1  | 4       | 45      | Write     | X        |
| ↑          | 0  | 2       | X       | Read      | 25       |
| ↑          | 0  | 4       | X       | Read      | 45       |


Observations: 

-> RAM performs write operation.

-> RAM performs read operation.

-> Data written into memory is correctly retrieved during read operation.

-> All operations occur only at positive edge of clock.


# Output

1. RTL DESIGN:

<img width="1024" height="559" alt="Image" src="https://github.com/user-attachments/assets/9334ac2f-6890-4992-aebf-378408bf0473" />

2. SIMULATION TCL CONSOLE:


3. SIMULATION WAVEFORM:

