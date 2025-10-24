	>>SOURCE FORMAT FREE	
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM2.
AUTHOR. EDOARDO PICCOLO
DATE-WRITTEN.October 23rd 2025

ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
*>In this case 'userName' is the name of a variable
*>PIC declares a picture ??
*>X means that the variable will contain an alphanumeric value
*>parenthesis () specify the maximum legth
*>The keyword VALUE will assign a values to userName
*>"You" is the value of the variable userName
01 userName PIC X(30) VALUE "You".

*>This is a numeric variable
*>9 is the maximum value if the variable
01 num1     PIC 9  VALUE ZEROS.
01 num2     PIC 9  VALUE ZEROS.
01 Total    PIC 99 VALUE 0.

*>COBOL is an hierarchical language
*>Increasing numbers mean increasing depth (in the structure?)
01 SSNum.
	02 SSArea	PIC 999.
	02 SSGroup	PIC 99.
	02 SSSerial	PIC 9999.

*>There are three types of data:
*>	1. Numerics
*>	2. Alphanumerics
*>	3. Alphabetic
*>It is possible to assign a value different to the dype declared
*>Types are not enforced

*>The keyword CONSTANT is used to declare a constant
01 pi CONSTANT AS 3.14.
*>The keyword ZEROS is a figurative constant
*>Together with ZERO and ZEROES they represent a 0 value
*>HIGH-VALUE represents the largest value of the type of the variable
*>LOW-VALUE represents the lowest value of the type of the variable

PROCEDURE DIVISION.

*>DISPLAY prints on the terminal terminating with a newline
*>The specification WITH NO ADVANCING removes the newline
DISPLAY "What is your name? " WITH NO ADVANCING

*>ACCEPT gets input from the user and stores it in the specified variable
ACCEPT userName

*>String concatenation for display can be don in the following way
DISPLAY "Hello " userName

*>STOP RUN will terminate the program
STOP RUN.
