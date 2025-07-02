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
```python
0000 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

2. <span class="cb">addi</span>:
```python
0001 | 00 | 0000000000
opcode | store_at | ten_bit_immediate_value
```

3. <span class="cb">sub</span>:
```python
0010 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

4. <span class="cb">subi</span>:
```python
0001 | 00 | 0000000000
opcode | store_at | ten_bit_immediate_value
```

5. <span class="cb">mul</span>:
```python
0010 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

6. <span class="cb">muli</span>:
```python
0001 | 00 | 0000000000
opcode | store_at | ten_bit_immediate_value
```

7. <span class="cb">div</span>:
```python
0010 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

8. <span class="cb">divi</span>:
```python
0001 | 00 | 0000000000
opcode | store_at | ten_bit_immediate_value
```

9. Extra opcode present, will implement a function soon.

10. <span class="cb">jump</span>: Core functionality has to implemented in the code, so until then this won't work when testing.
```python
1001 | 000000000000
opcode | jump_to_twelve_bit_address
```

11. <span class="cb">delete</span>:
```python
1010 | 00 | xxxxxxxxxx
opcode | delete_at | dont_care_values
```

12. <span class="cb">and</span>:
```python
0010 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

12. <span class="cb">or</span>:
```python
0010 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

13. <span class="cb">not</span>:
```python
0010 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | dont_care_values
```

14. <span class="cb">xor</span>:
```python
0010 | 00 | 00 | 00 | 00 | xxxx
opcode | store_at | operand_one | operand_two | dont_care_values
```

15. <span class="cb">halt</span>:
```python
1111 | xxxxxxxxxxxx
opcode | dont_care_values
```

Kept only basic logic operations as others can be done from these.


# Dilemma
Since the <span class="cb">immediate</span> operations handle the function of <span class="cb">storei</span> it has been removed. To replace this opcode, I'm gonna need something useful!

"What will that be?" will remain a questions for now &#128511;.

{%
    include paginate.html
	back="/vr16-docs/working.html"
    next="/vr16-docs/assembler.html"
	_back="Working"
    _next="Assembler"
%}
