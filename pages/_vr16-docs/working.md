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

# Reality
As per the <a href="https://github.com/bsod2528/cpu/commit/a03ddea555b00e2594c6f16772c364bf0e9e9897">latest commit</a> things still don't work entirely.

Top module is present, one can update the mem file to view the output in waveform. 

I've mentioned the exact problem in [dev-blog 3](/2025/07/02/vr16-update.html), which is the output is being stored in the wrong register despite correct assembly code. So there's either wrong connections in the top module or somewhere else.

If it's somewhere else, I'm in for a ride.

If you have time, and you're willing to help please do drop in a PR &#x1F5FF; I shall be thankful.

{%
    include paginate.html
	back="/pages/projects/vr16.html"
    next="/vr16-docs/isa.html"
	_back="VR16 Home Page"
    _next="Instruction Set"
%}
