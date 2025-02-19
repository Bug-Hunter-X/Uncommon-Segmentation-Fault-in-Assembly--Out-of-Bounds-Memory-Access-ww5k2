# Uncommon Segmentation Fault in Assembly: Out-of-Bounds Memory Access

This repository demonstrates an uncommon error in assembly programming: a segmentation fault resulting from an out-of-bounds memory access. The error is subtle and difficult to reproduce, arising only under specific conditions relating to the values in registers at runtime.

The `bug.asm` file contains the erroneous code.  The `bugSolution.asm` file provides a corrected version with added checks to prevent the fault.  The core issue is the instruction `mov eax, [ebx + ecx*4 + 0x10]`, which calculates a memory address that might be invalid.

## How to Reproduce

1. Assemble and link the `bug.asm` file.
2. Run the resulting executable. Under certain conditions, a segmentation fault will occur.
3. Compare with the `bugSolution.asm` for a corrected approach. 

## Solution

The solution involves range checking the calculated address before attempting to access memory.  The improved code verifies that the address is within the bounds of allocated memory, thus preventing the segmentation fault.