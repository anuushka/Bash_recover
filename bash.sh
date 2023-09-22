#[] : Basic Conditional expressions.if [ -f $file ]; then echo “The file exists”
#[[]] : Conditional expressions. Provides more advanced features than [], such as pattern matching and logical operators. if [[ $string == “linux” ]]; then echo “The string is linux”
#(): Run commands in a subshell environment. (cd /home/user/directory && ls)
#(()) : Arithmetic operations. if (( $a + $b > $c )); then echo “The sum of a and b is greater than c”
# Numeric comparison: -eq -lt -gt -ne -ge -le 
# String comparison: ==

#Write a bash script that prints the string "HELLO".
echo "HELLO"

#Your task is to use for loops to display only odd natural numbers from  to 1..99
for i in {1..100};
do 
    if (($i%2==1)); then
    echo  $i
    fi;
done 

#Write a Bash script which accepts  as input and displays the greeting "Welcome (name)"
read name
echo "Welcome $name"

#Use a for loop to display the natural numbers from  to 1..50 
for i in {1..50};
do 
    echo $i
done 

#Given two integers, X and Y, find their sum, difference, product, and quotient. use -e to echo with \n
read X 
read Y
sum=$(($X+$Y))
dif=$(($X-$Y))
prod=$(($X*$Y))
quot=$(($X/$Y))
echo -e "$sum \n$dif \n$prod \n$quot"

#Given two integers, X and Y, identify whether X < Y or X > Y or X = Y
read X 
read Y
if [ $X -gt $Y ] 
then  
    echo "X is greater than Y" 
elif [ $X -lt $Y ] 
then  
    echo "X is less than Y" 
else   
    echo "X is equal to Y"  
fi 

#Read in one character from STDIN.
#If the character is 'Y' or 'y' display "YES".
#If the character is 'N' or 'n' display "NO".
#No other character will be provided as input.
read letter 
if [[ $letter == 'Y' || $letter == 'y' ]]
then 
    echo "YES"
else
    echo "NO" 
fi

#Given three integers (X,Y, and Z ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
#If all three sides are equal, output EQUILATERAL.
#Otherwise, if any two sides are equal, output ISOSCELES.
#Otherwise, output SCALENE
read X
read Y 
read Z
if [[ $X -eq $Y && $X -eq $Y && $X -eq $Z ]]
then
    echo "EQUILATERAL"
elif [[ $X -eq $Y || $X -eq $Z || $Y -eq $Z ]]
then 
    echo "ISOSCELES"
else 
    echo "SCALENE"
fi
