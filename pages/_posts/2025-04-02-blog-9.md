---
title: "VR16 - ALU I HATE YOU!!!!"
layout: post
media: /assets/blogs/blog-9.gif
toc: true
tags: dev-blog cpu-dev vlsi
anchor: false
sidenav: false
blog_no: 9
---
ALU is truly difficult that's why lol.

# Context
In the previous dev-blog I mentioned that the ALU is unfathomable. I'll be honest, we had a lab for VLSI in few semesters back, so I've made the ALU before. Here it was genuinely difficult.

CPU Repo link: [Click here](https://www.github.com/bsod2528/cpu)
{:.warning}

# What's so tough about the alu?

So the entire ALU in general is a big switch case, which I know for a fact goes like this:
```verilog
always @ (posedge clk or posedge reset) begin
    if (reset)
        result <= 2'b00;
    else begin
        case (opcode)
            2'b00: result <= a + b;
            2'b01: result <= a - b;
            2'b10: result <= a * b;
            2'b11: result <= a / b;
        endcase
    end
end
```

This makes sense right? Like total sense, I get that, wonderful. The main point is how the CPU would, you know execute this.

- Let's say we have this instruction like this: `0000 00 01 10 11 0010`
- This essentially means: `ADD R0, R1, R2, R3, 2`

This means we have to chain the operations. Get my point, so our end result of the entire instruction would be:
- R0 = R1 + R2
- R0 = R0 + R3
- R0 = R0 + 2 (which is our immediate value)

THIS MY FRIENDS, was really frustrating to bring out as code. Conceptually it's really easy to do this, but to bring this alive in terms of code was really tough.

## Solutions for this
### 1). Garbage Opcodes
This is where my brain froze. It took me nearly days to understand or to even come up with a simple solution for this "chaining" method. Upon giving up, and consulting my mentor
&#x1F5FF; (AI of course) it said to ADD MORE GARBAGE OPCODES.

Like `ADDTWO`, `ADDTHREE`, `ADDFOUR` &#128557;

I'm supporting so far: ADD, SUB, MUL, DIV as my main arithmetic operations for now. Adding garbage codes just wastes my OPCODE usage and I'm forced to allocate more bits for my
OPCODES by converting this 16-bit into a 32-bit cpu.

### 2). Just add it all mate!
Yeah so on testing the alu, I initially added `ADD` alone for testing, and AI just suggested to keep them all like just add all values regardless.

This is fundamentally messed up cause, data would get misplaced and give us WRONG output in future calculations (in case of the CPU being on for long time).

## Solution
Claude AI by anthropic is a goat. NOT sponsored lol, cause it said just force the devs who program on this by constraining your ISA (Instruction Set Architecture).

Which means, to NOT support multi-operand operations.

This means my assembler which converts high-level code into vrasm (name of the asm that I've given for this cpu) would have to convert such complex instructions by breaking them down
or bring up a compiler error or whatever. 

I don't know exactly, when I build the assembler, I'll take care of it then. Until then, this is the update for my cpu! See you guys soon!

{%
    include paginate.html
    back="/pages/blog.html"
    _back="Blogs"
%}
