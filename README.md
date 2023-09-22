# Bash basics
[] : Basic Conditional expressions.if [ -f $file ]; then echo “The file exists”

[[]] : Conditional expressions. Provides more advanced features than [], such as pattern matching and logical operators. if [[ $string == “linux” ]]; then echo “The string is linux”

(): Run commands in a subshell environment. (cd /home/user/directory && ls)

(()) : Arithmetic operations. if (( $a + $b > $c )); then echo “The sum of a and b is greater than c”

Numeric comparison: -eq -lt -gt -ne -ge -le 

String comparison: ==

# Commands

cut - slices a line and extracts the section

https://www.geeksforgeeks.org/cut-command-linux-examples/

head - The head command, as the name implies, print the top N number of data of the given input. By default, it prints the first 10 lines of the specified files. If more than one file name is provided then data from each file is preceded by its file name. https://www.geeksforgeeks.org/head-command-linux-examples/


