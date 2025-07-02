---
layout: default
title: Assembler && VR-ASM Docs
toc: true
order: 3
anchor: true
sidenav: true
collection: vr16-docs
---

VR16 CPU [Home Page](/pages/projects/vr16.html)
{:.info}

# Assembler
Well as the name suggests, this explains how the assembler works hehe.

## `assembler.py`
- Lines are first loaded onto a list from the asm source file.
- Based on the opcode, a simple if condition is run and the proper <span class="cb">extractor()</span> is chosen.
- Opcodes are only checked once the assembler reads <span class="cb">start:</span>, similarly exits the operation on seeing <span class="cb">end:</span>.
- Once the extractor runs, the output is further sent back from extractor.py to this file and they're written onto the .mem file

## `extractor.py`
- This file holds all functions based on opcode.
- Essentially substrings the list given by assembler.py and converts into string representation of binary.
- This is further sent back and written into the .mem file.

## `baseclass.py`
- Holds custom exceptions by subclassing Exception.
- <span class="cb">RegisterNotPresent</span> and <span class="cb">OpcodeNotPresent</span> are two custom exceptions present at the moment.

# VR-ASM Documention
This is subject to change.
{:.warning}

## General Introduction
1. All programs must start with the <span class="cb">start:</span> keyword.
2. Once start is initiliased, all instructions must be indented with spaces of 4.
3. All lines must end with the `;` semicolon. This only applies to code once initialised.
4. Comments can made using the <span class="cb">\-\-</span>.
5. Everything must be in lowercase.
6. All programs must end with the <span class="cb">end:</span> keyword.

## Instructions and their syntax
<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

1. add, sub, mul, div:
```shell
- <opcode> <store_at> <operand_one> <operand_two>;
```
2. addi, subi, muli, divi:
```shell
- <opcode> <store_at> <10_bit_immediate_value>;
```
3. and, or, xor:
```shell
- <opcode> <store_at <operand_one> <operand_two>;
```
4. not
```shell
- not <store_at> <operand_one>;
```
5. jump: TO BE IMPLEMENTED
6. delete
```shell
- delete <destination_register>;
```
7. halt
```shell
- halt;
```

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
