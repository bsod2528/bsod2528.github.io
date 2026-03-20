---
layout: default
toc: true
order: 1
anchor: true
sidenav: true
collection: vr16-docs
---

VR16 CPU [Home Page](/pages/projects/vr16.html)
{:.info}

# Ideal working of VR16
So, it all starts with a simple clock pulse.

1. Program Counter
> Holds the current instruction address in counter_reg. Increments sequentially on each WRITE cycle, or loads a new address on JUMP/CJMP. Supports unconditional jumps and a REFETCH state that allows the instruction memory to settle after a jump before decoding begins.
2. Instruction Memory:
> A 256-entry 16-bit wide ROM loaded from a .mem file at simulation time via $readmemb. Outputs are registered - the instruction word is latched on the rising clock edge, keeping the pipeline stable across state transitions.
3. Instruction Decoder
> Fully combinational. Splits the 16-bit instruction word into its fields - opcode, source registers, destination register, immediate value, jump address - and drives them onto the data path immediately.
4. Control Unit
> An FSM that sequences the pipeline. Drives all enable and select signals for the ALU, register file, and program counter. Handles all 16 opcodes including conditional jumps with four conditions: jeq, jne, jgt, jlt — all evaluated against zero, with subtract used to compare two values.
5. ALU
> Performs arithmetic (ADD, SUB, MUL, DIV and their immediate variants), logical (AND, OR, NOT, XOR), and shift operations on two 16-bit operands. Results are registered and signalled complete via alu_done.
6. General Purpose Registers
> Four 16-bit registers (r0–r3) with a combinational read path and a clocked write path. The write is committed in the WRITE state alongside the PC increment.



{%
    include paginate.html
	back="/vr16-docs/isa.html"
    next="/pages/projects/vr16.html"
	_back="Instruction Set"
    _next="VR16 Home Page"
%}
