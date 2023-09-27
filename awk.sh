#For each student, if one or more of the three scores is missing, display: Not all scores are available for [Identifier]
Input:
A 25 27 50
B 35 75
C 75 78 
D 99 88 76
awk '{if ($2 == "" || $3 == "" || $4 == "") print "Not all scores are available for",$1}'

#Depending on the scores, display the following for each student:
Input:
A 25 27 50
B 35 75 90
C 75 78 70
D 99 88 70
awk '{
    if ($2 >= 50 && $3 >= 50 && $4 >= 50)  
        print $1,": Pass";
    else
        print $1,": Fail";
    }'
  
#For each row of data, append a space, a colon, followed by another space, and the grade. Observe the format showed in the sample output.
#Your task is to identify the performance grade for each student. 
#If the average of the three scores is 80 or more, the grade is 'A'. 
#If the average is 60 or above, but less than 80, the grade is 'B'. 
#If the average is 50 or above, but less than 60, the grade is 'C'. 
#Otherwise the grade is 'FAIL'.
Input: 
A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76
grade 
awk '{
    total=$2+$3+$4;
    avg=total/3;
    if (avg >= 80)  
        grade="A";
    else if (avg >= 60 && avg < 80)
        grade="B";
    else if (avg >= 50 && avg < 60)
        grade="C";
    else
        grade="FAIL"
    print($1,$2,$3,$4, ":", grade);
    }'

#Concatenate every 2 lines of input with a semi-colon.
#Each line will be in the format:
#[Identifier]<space>[Score in English]<space>[Score in Math]<space>[Score in Science]
Input:
A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76 
Output:
A 25 27 50;B 35 37 75
C 75 78 80;D 99 88 76 
ORS=NR%2?";":"\n" sets the Output Record Separator (ORS) based on a conditional expression.
NR represents the record number, which is essentially the line number being processed in the input data.
NR%2 calculates the remainder when NR is divided by 2. This is a common way to check if a line is even or odd. If NR is even, NR%2 will be 0, and if it's odd, NR%2 will be 1.
NR%2?";":"\n" is a ternary conditional expression. If NR%2 is 1 (meaning the line is odd), it sets ORS to ";" (a semicolon). If NR%2 is 0 (meaning the line is even), it sets ORS to "\n" (a newline character).

awk 'ORS=NR%2?";":"\n"'

