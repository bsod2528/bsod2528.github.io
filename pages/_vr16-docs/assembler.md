---
layout: default
title: Assembler
toc: true
order: 3
anchor: true
sidenav: true
collection: vr16-docs
---

# Assembler Working

VR16 CPU [Home Page](/pages/projects/vr16.html)
{:.info}

Well as the name suggests, this explains how the assembler works hehe.

1. `assembler.py`
- Lines are first loaded onto a list from the asm source file.
- Based on the opcode, a simple if condition is run and the proper <span class="cb">extractor()</span> is chosen.
- Opcodes are only checked once the assembler reads <span class="cb">start:</span>, similarly exits the operation on seeing <span class="cb">end:</span>.
- Once the extractor runs, the output is further sent back from extractor.py to this file and they're written onto the .mem file

2. `extractor.py`
- This file holds all functions based on opcode.
- Essentially substrings the list given by assembler.py and converts into string representation of binary.
- This is further sent back and written into the .mem file.

3. `baseclass.py`
- Holds custom exceptions by subclassing Exception.
- <span class="cb">RegisterNotPresent</span> and <span class="cb">OpcodeNotPresent</span> are two custom exceptions present at the moment.

## General Syntax
1. All programs must start with the <span class="cb">start:</span> keyword and must end with <span class="cb">end:</span>.
2. Once start is initiliased, all instructions must be indented with spaces of 4.
3. All lines must end with the `;` semicolon. This only applies to code once initialised.
4. Comments can made using the <span class="cb">\-\-</span>.
5. Everything must be in lowercase.
6. Refer the [instruction-set architecture](./isa.html) for supported opcodes.

## Registers Present
As mentioned, only 4 general purpose registers:
- r0 
- r1
- r2
- r3

{%
    include paginate.html
	back="/vr16-docs/isa.html"
    next="/vr16-docs/compiler.html"
	_back="Instruction Set"
    _next="VRScript"
%}
