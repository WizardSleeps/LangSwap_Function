/*

Below is the code for the assembly swap. Along with the disassembled C to assembly
code that will show how simble the sample is. Following this will be the specifics:

r0, r1, r2, and r3 are al registers that are being used to hold temporary data.
Writing a simple assembly code omits the need for the use of the stack. Hence the
processing speed (that can be increased), and the space may be sustainable.

@version 0.12.1
Author: @WizardSleeps
https://GitHub.com/WizardSleeps

*/

.text
.align 2
.global swap
.type swap, function

/*****************************************

* Function swap
* Swaps two integers
* Returns Parameters
* r0 - Num1 (a)
* r1 - Num2 (b)

******************************************/

swap:
        ldr r2, [r0, #0] /* loads r2 with content of r0*/
        ldr r3, [r1, #0] /* loads r3 with content of r1*/
        str r3, [r0, #0] /* stores content of r3 into r0*/
        str r2, [r1, #0] /* stores content of r2 into r1*/
        bx lr /* branches to main with the return address saved in lr*/