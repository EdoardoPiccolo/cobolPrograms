       >>source format free
identification division.
program-id. counter.
author. Edoardo Piccolo.
date-written. January 6th 2026.

*> This program performs displays a counter from 0 to 9
*> using a PERFORM UNTIL loop.

data division.
working-storage section.
01 x pic 99 value 0.

procedure division.
    PERFORM UNTIL NOT (x < 10)
        display x
        add 1 to x
    END-PERFORM
STOP RUN.
