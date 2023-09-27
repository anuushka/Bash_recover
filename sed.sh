Input: 
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:
But thou contracted to thine own bright eyes, blah blah

#Substitute the first occurrence of 'editor' with 'tool'. CASE-SENSITIVE
s: Indicates a substitution operation.
\b: Word boundary, ensuring that "the" is a whole word, not part of another word.
sed 's/\bthe\b/this/'

#For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
'I' : Makes the search case-insensitive
'g' : Replaces all occurrences in each line.
sed 's/\bthy\b/your/gI'

#Given an input file, in each line, highlight all the occurrences of 'thy' by wrapping them up in brace brackets. The search should be case-insensitive.
sed 's/\bthy/{&}/gI'

#Given  lines of credit card numbers, mask the first  digits of each credit card number with an asterisk (i.e., *) and print the masked card number on a new line. 
#Each credit card number consists of four space-separated groups of four digits. For example, the credit card number 1234 5678 9101 1234 would be masked and printed as **** **** **** 1234.
sed '-es/[0-9]/*/'{12..1}

#N lines, each containing a credit card number with the ordering of its segments reversed.
sed -E "s/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1/"
