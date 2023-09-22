# Bash_recover

Commands: 

cut - slices a line and extracts the section

[] : Basic Conditional expressions.if [ -f $file ]; then echo “The file exists”

[[]] : Conditional expressions. Provides more advanced features than [], such as pattern matching and logical operators. if [[ $string == “linux” ]]; then echo “The string is linux”

(): Run commands in a subshell environment. (cd /home/user/directory && ls)

(()) : Arithmetic operations. if (( $a + $b > $c )); then echo “The sum of a and b is greater than c”

Numeric comparison: -eq -lt -gt -ne -ge -le 

String comparison: ==
