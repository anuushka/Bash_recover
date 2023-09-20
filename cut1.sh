#For each line of input, print its  character on a new line for a total of  lines of output.

while read line;
do 
    echo $line | cut -c3
done
