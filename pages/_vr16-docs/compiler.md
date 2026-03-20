---
layout: default
title: Compiler
toc: true
order: 4
anchor: true
sidenav: true
collection: vr16-docs
---

# VRScript
A simple compiler for [vr-asm](./assembler.html) written in Python, being the highest in the abstraction order of computing. On the contrary this runs on x64 and not on vr16-isa.

VRScript is the name of language for which "software" to be developed on the CPU.

## Features
1. Comments can be made using " `` " (double backtick).
2. Register assignments: `<register> = <int>` - only `r0`, `r1`, `r2`, `r3` are valid left-hand sides.
3. Arithmetic calls: `<instruction>(<store_at>, <operand_one>, <operand_two>)` - supported instructions are `add`, `sub`, `mul`, `div`.
4. For loops: `for <var> in <n> { <reg> <op> <value> }` - runs the body `n` times.
    - `<n>` must be an integer in range `0..VR16_MAX_FOR_LOOP_ITERATIONS` (default max: `10000`) to prevent huge compile-time unroll output.
    - Supported loop body operators: 
        - `++` → `addi`
        - `--` → `subi`
        - `**` → `muli`
        - `//` → `divi`
    - Example: `for i in 4 { r3 ++ 2 }` emits `addi r3, 2;` four times.

## Working
1. `compiler.py`
Runs in a similar fashion to the assembler.
- Line by line is parsed.
- <span class="cb">&#96;&#96;</span> are comments. 

2. `extractor.py`
- Based on opcode, an extractor function is chosen.
- This function further rights the correct assembly code in to a `.asm` file.


{%
    include paginate.html
	back="/vr16-docs/assembler.html"
    next="/pages/projects/isa.html"
	_back="Assembler"
    _next="Instruction Set"
%}
