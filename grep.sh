Input: 
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:
blah blah blah
#Given a text file, which will be piped to your command through STDIN, use grep to display all those lines which contain any of the following words in them:
#the, that, then, those
#The search should not be sensitive to case. Display only those lines of an input file, which contain the required words.
grep -E -i -w "the|that|then|those" 
-E allows greping several words with " | "
-w allows greping whole words "the, that, then, those" not substring of a large word "otherwise"
-i allows case insensitive 

#Output only those lines that contain the word 'the'. The search should be case sensitive. The relative ordering of the lines in the output should be the same as it was in the input.
grep -w "the"

#Output only those lines that contain the word 'the'. The search should NOT be case sensitive. The relative ordering of the lines in the output should be the same as it was in the input.
grep -i -w "the"

#Only display those lines that do NOT contain the word 'that'. The relative ordering of the lines should be the same as it was in the input file. CASE-INSENSITIVE
grep -v -w -i "that"

Input: 
1234 5678 9101 1234  
2999 5178 9101 2234  
9999 5628 9201 1232  
8482 3678 9102 1232
grep -E '([0-9])\s?\1'
([0-9]) captures a single digit between 0 and 9.
\s? allows for zero or one space to exist after the captured digit.
\1 requires that the next character be the same as the digit captured by ([0-9])

