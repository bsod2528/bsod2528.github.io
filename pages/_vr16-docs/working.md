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

1. Program counter's <span class="cb">counter_reg</span> increments on the 1st clock pulse.
    - This essentially points to a memory address.
2. Instruction memory holds all the instructions.
    - A simple <span class="cb">.mem</span> file for now.
3. Instruction decoder further parses all the information and sends out data accordingly.
4. Control unit takes care of reading and writing and letting the ALU to work.
5. ALU does arithmetic and logical operations alone.
6. Results are further stored in 1 of 4 general purpose registers [<span class="cb">R0</span>, <span class="cb">R1</span>, <span class="cb">R2</span>, <span class="cb">R3</span>]

# In reality what's the case?
As of this commit: [<span class="cb">f6c446e6df563b7e4b69a8135304f4a15109e210</span>](https://github.com/bsod2528/cpu/commit/f6c446e6df563b7e4b69a8135304f4a15109e210),
the above mentioned doesn't happen.

The part where <span class="cb">control unit</span> takes care of reading and writing is yet to be implemented.

All parts have been implemented, yet the "connecting" between all the parts is yet to be done alone. As of date <span class="gta">April 8th 2025</span>, I've had my
[CAN YOU HEAR THE MUSIC MOMENT!!!!](https://www.instagram.com/reel/DFunZ3sxXdg/).

So soon enough this page will be updated, and the code will be updated to support connection.

As of the "TOP MODULE" needed, I'm just going to use a simple testbench to connect it all and call it a day. 

{%
    include paginate.html
	back="/pages/projects/vr16.html"
    next="/vr16-docs/isa.html"
	_back="VR16 Home Page"
    _next="Instruction Set"
%}
