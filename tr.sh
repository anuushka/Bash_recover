#In a given fragment of text, replace all parentheses   with box brackets  .
tr "(" "[" | tr ")" "]"

#In a given fragment of text, delete all the lowercase characters .
tr -d "a-z" 

#In a given fragment of text, replace all sequences of multiple spaces with just one space.
tr -s '  ' ' '
