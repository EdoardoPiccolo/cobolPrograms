       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. program5.
AUTHOR. Edoardo Piccolo.
DATE-WRITTEN. November 1st 2025

ENVIRONMENT DIVISION.
*> it is possible to define custom data types
CONFIGURATION SECTION.
SPECIAL-NAMES.
       *> THRU defines a range
       CLASS PassingScore IS "A" THRU "C", "D".

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 age PIC 99 VALUE 0.
01 grade PIC 99 value 0.
01 score PIC X(1) VALUE "B".
*> boolean variable
01 canVoteFlag PIC 9 VALUE 0.
       *> set a condition to a variable
       88 canVote VALUE 1.
       88 cantVote VALUE 0.
01 testNumber PIC X.
       *> can also be used to designate multiple values
       88 isPrime VALUE "2", "3", "5", "7".
       88 isOdd VALUE "1", "3", "5", "7", "9".
       88 isEven VALUE "2", "4", "6", "8".
       88 lessThan5 VALUE "1" THRU "4".
       88 isNumber VALUE "0" THRU "9".

PROCEDURE DIVISION.
DISPLAY "Enter Age : " WITH NO ADVANCING
ACCEPT age
*> conditions
IF age > 18 THEN
       DISPLAY "You can vote"
ELSE
       DISPLAY "You can't vote"
END-IF

IF score IS PassingScore THEN
       DISPLAY "You passed"
ELSE
       DISPLAY "You failed"
END-IF

*> Built in classifications:
*> 1) NUMERIC
*> 2) ALPHABETIC
*> 3) ALPHABETIC-LOWER
*> 4) ALPHABETIC-UPPER
IF score IS NOT NUMERIC THEN
       DISPLAY "Not a number"
END-IF

IF age > 18 THEN
       SET canVote TO TRUE
ELSE
       SET cantVote TO TRUE
END-IF
DISPLAY "Vote " canVoteFlag

DISPLAY "Enter single number or X to exit : "
ACCEPT testNumber
*>> loop
PERFORM UNTIL NOT isNumber
       EVALUATE TRUE
           WHEN isPrime DISPLAY "Prime"
           WHEN isOdd DISPLAY "Odd"
           WHEN isEven DISPLAY "Even"
           WHEN lessThan5 DISPLAY "Less than 5"
           WHEN OTHER DISPLAY "Default"
       END-EVALUATE
       ACCEPT testNumber
END-PERFORM
STOP RUN.
