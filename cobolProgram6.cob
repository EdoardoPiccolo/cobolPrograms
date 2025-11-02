       >>source format free
identification division.
program-id. program6.
author. Edoardo Piccolo.
date-written. November 2nd 2025.

environment division.
configuration section.

data division.
file section.
working-storage section.

procedure division.
*> define an open paragrph (functions)
subOne.
       display "In paragraph 1".
       perform subTwo
       display "Returned to paragraph 1"
       perform 2 times display "Repeat"
       end-perform
       stop run.

subTwo.
       display "In paragraph 2"
       perform subThree
       display "Returned to paragraph 2".

subThree.
       display "In paragraph 3".
