---
layout: default
title: VRScript
toc: true
order: 4
anchor: true
sidenav: true
collection: vr16-docs
---

# VRScript

This was done for fun to make vr-asm much easy written in Python.

## Features
- Basic variables can be stored
- <span class="cb">add()</span> function alone has been implemented, which is <span class="cb">addi</span> in asm.

# Working
## `compiler.py`
Runs in a similar fashion to the assembler.
1. Line by line is parsed.
2. <span class="cb">&#96;&#96;</span> are comments. 

## `extractor.py`
1. Based on opcode, an extractor function is chosen.
2. This function further rights the correct assembly code in to a `.asm` file.

This compiler will be built properly. At the point of writing documentation, this compiler isn't the main focus for this project. It was written genuinely for fun so yeah.
