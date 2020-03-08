/*

This is a lab for the function string reversing that will then reverse the
string passed.

@version 0.12.1
Author: @WizardSleeps
https://GitHub.com/WizardSleeps

*/

.text
.align 2
.global stringReverse
.type stringReverse function

/*****************************************

- Function String Reverse
- Reverses the string of characters passed from main
- Inputs: r0 ~ address of first character on string
- Clears the registers r1, r2, r3 (StringReverse)
- Function pushloop ~ Pushes the string onto the stack in order
starting from MSB to LBS (pushloop)
- Function poploop ~ sets string onto the stack in order starting
from MSB to LBS, then in reverse order of pushloop (poploop)

*****************************************/

stringReverse:
        mov r1, #0 // IMM 0 to r1
        mov r2, #0 // IMM 0 to r2
        mov r3, #0 // IMM 0 to r2
        push {r1} // Pushes r1 onto the memory stack

pushloop:
        ldr r1, [r0,r2] // Loads character of string into r1
        push {r1} // Pushes the character onto the memory stack
        add r2,r2,#1 // Increases the count by 1
        cmp r1,#0 // Compares r1 with null to test for end-result (i.e 0)
        bne pushloop // Loops back to pushloop if r1 is not equal to 0
        pop {r1} // Pops r1(null value 0) from stack

poploop:
        pop {r1} // Pops the character into r1 in the reverse order
        str r1, [r0,r3] // Stores the character in the regiters r0 from start
        add r3, r3, #1 // Increases count by 1
        cmp r2,r3 // Compares r2-r3 (number of characters pushed(r2)) to number characters
        popped (r3))
        bne poploop // Branches back to poploop and loop if r2 is not equal to r3
        bx lr // Branches back to location stored in lr of main

        