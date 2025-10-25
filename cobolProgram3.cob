       *>this allows for free formatting without being restricted to
       *>legacy formatting
       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. program3.
AUTHOR. Edoardo Piccolo.
DATE-WRITTEN. October 25th 2025

DATA DIVISION.
FILE SECTION.
*> needed to declare variables
WORKING-STORAGE SECTION.
01 userName PIC X(10).
01 num1 PIC 99.
01 num2 PIC 99.
01 total PIC 99.
01 SSNum.
       02 SSArea PIC 99.
       02 SSGroup PIC 99.
       02 SSSerial PIC 9999.

PROCEDURE DIVISION.
*> move the value ZERO into the variable userName
MOVE ZERO TO userName
DISPLAY userName
DISPLAY "Enter two values to sum: "
*> Each entry must be followed by enter, otherwise entries other than
*> the first one on each line will be ignored
ACCEPT num1
ACCEPT num2
*>This is one way to perform mathematical operations
COMPUTE total = num1 + num2
DISPLAY num1 " + " num2 " = " total
DISPLAY "Enter your SSN: "
ACCEPT SSNum
DISPLAY "area -> " SSArea
*> SSArea corresponds to the first two digits of SSNum, variable with
*> lower rank correspond to different partitions of the corresponding
*> higher ranking variable

STOP RUN.

*> warning: "_FORTIFY_SOURCE" redefined ??
