       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. program3.
AUTHOR. Edoardo Piccolo.
DATE-WRITTEN. October 27th 2025

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 sampleData PIC X(10) VALUE "Stuff".
01 justLetters PIC AAA VALUE "ABC".
*> here (4) is the number of digits
01 justNums PIC 9(4) VALUE 1234.
01 signedInt PIC S9(4) VALUE -1234.
*> here V specifies the number of decimal places in a number
01 payCheck PIC 9(4)V99 VALUE ZEROS.

01 customer.
       02 ident PIC 9(3).
       02 custName PIC X(20).
       02 dateOfBirth.
           03 DOB PIC 99.
           03 MOB PIC 99.
           03 YOB PIC 9(4).

01 num1 PIC 9 VALUE 5.
01 num2 PIC 9 VALUE 4.
01 num3 PIC 9 VALUE 3.
01 answer PIC S99V99 VALUE 0.
01 rem PIC 9V99.

PROCEDURE DIVISION.
MOVE "More stuff" TO sampleData
MOVE "123" TO sampleData
MOVE 123 TO sampleData
DISPLAY sampleData
DISPLAY payCheck

MOVE "123Bob Smith           03112014" TO customer
DISPLAY custName
DISPLAY DOB "/" MOB "/" YOB

MOVE ZERO TO sampleData
DISPLAY sampleData
MOVE SPACE TO sampleData
DISPLAY sampleData
*> move a question mark in every spot
MOVE HIGH-VALUE TO sampleData
DISPLAY sampleData
*> move a space in every spot
MOVE LOW-VALUE TO sampleData
DISPLAY sampleData
MOVE QUOTE TO sampleData
DISPLAY sampleData
*> fill every spot with a custom value
MOVE ALL "2" TO sampleData
DISPLAY sampleData

*> GIVING is used for setting where the result shuld be stored
ADD num1 TO num2 GIVING answer
DISPLAY answer
*> to use subtract you have to use FROM instead of TO
SUBTRACT num1 FROM num2 GIVING answer
DISPLAY answer
*> to use subtract you have to use BY instead of TO
MULTIPLY num1 BY num2 GIVING answer
DISPLAY answer
*> to use subtract you have to use INTO instead of TO
*> divide gives the quotient and the remainder
*> the remainder can be extracted with REMAINDER
DIVIDE num1 INTO num2 GIVING answer REMAINDER rem
DISPLAY "quotient = " answer "    remainder = " rem

*> perform multiple addition
ADD num1, num2 TO num3 GIVING answer
ADD num1, num2, num3 GIVING answer
DISPLAY answer
*> different way to perform the same operations
COMPUTE answer = num1 + num2
COMPUTE answer = num1 - num2
COMPUTE answer = num1 * num2
COMPUTE answer = num1 / num2
*> exponentiation
COMPUTE answer = num1 ** 2
*> more complex operations
COMPUTE answer = (3 + 5) * 5
*> rounding
COMPUTE answer ROUNDED = 3.0 + 2.005
DISPLAY answer

STOP RUN.
