---
layout: default
title: Instruction Set
toc: true
order: 2
anchor: true
sidenav: true
collection: vr16-docs
---

VR16 CPU [Home Page](/pages/projects/vr16.html)
{:.info}

# VR16-ISA v.0.1.1
THIS IS SUBJECT TO CHANGE, I'M EXPERIMENTING ENTIRELY.

# Working for this
So instead of having a definite IS Format: <span class="cb">0000 00 00 00 00 0000</span>, this would keep changing based on the opcode mentioned.

For this the entire ISA has to be designed.

1. <span class="cb">add</span>:
    - <span class="cb">0000 \| 00 \| 00 \| 00 \| 00 \| xxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
2. <span class="cb">addi</span>:
    - <span class="cb">0001 \| 00 \| 0000000000</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="imm-val">10-bit immediate</span>
3. <span class="cb">sub</span>:
    - <span class="cb">0010 \| 00 \| 00 \| 00 \| 00 \| xxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
4. <span class="cb">subi</span>:
    - <span class="cb">0011 \| 00 \| 0000000000</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="imm-val">10-bit immediate</span>
5. <span class="cb">mul</span>:
    - <span class="cb">0100 \| 00 \| 00 \| 00 \| 00 \| xxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
6. <span class="cb">muli</span>:
    - <span class="cb">0101 \| 00 \| 0000000000</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="imm-val">10-bit immediate</span>
7. <span class="cb">div</span>:
    - <span class="cb">0110 \| 00 \| 00 \| 00 \| 00 \| xxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
8. <span class="cb">divi</span>:
    - <span class="cb">0111 \| 00 \| 0000000000</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="imm-val">10-bit immediate</span>

10. <span class="cb">jump</span>:
    - <span class="cb">1001 \| 000000000000 \|</span>
    - <span class="opcode">opcode</span> \| jump_to_12_bit_address for now
11. <span class="cb">delete</span>:
    - <span class="cb">1010 \| 00 \| xxxxxxxxxx</span>
    - <span class="opcode">opcode</span> \| destination_register \| <span class="dont-care">dont-care</span>
12. <span class="cb">and</span>:
    - <span class="cb">1011 \| 00 \| 00 \| 00 \| xxxxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
12. <span class="cb">or</span>:
    - <span class="cb">1100 \| 00 \| 00 \| 00 \| xxxxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
13. <span class="cb">not</span>:
    - <span class="cb">1101 \| 00 \| 00 \| xxxxxxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="dont-care">dont-care</span>
14. <span class="cb">xor</span>:
    - <span class="cb">1110 \| 00 \| 00 \| 00 \| xxxxxx</span>
    - <span class="opcode">opcode</span> \| <span class="store-at">store_at</span> \| <span class="operand-one">operand_one</span> \| <span class="operand-two">operand_two</span> \| <span class="dont-care">dont-care</span>
15. <span class="cb">halt</span>:
    - <span class="cb">1111 \| xxxxxxxxxxxx</span>
    - <span class="opcode">opcode</span> \| <span class="dont-care">dont-care</span>

Kept only basic LOGIC operations as others can be done from these.


# Dilemma
Since the <span class="cb">immediate</span> operations handle the function of <span class="cb">storei</span> it has been removed. To replace this opcode, I'm gonna need something useful!

"What will that be?" will remain a questions for now &#128511;.

{%
    include paginate.html
	back="/vr16-docs/working.html"
	_back="Working"
%}
