#Display the first 20 lines of an input file.
while read line;
do
    echo $line >> file.txt 
done
    head -n 20 < file.txt

#Display the first 20 characters of an input file.
while read line;
do
    echo $line >> file.txt
done
    head -c 20 < file.txt

#Display the lines (from line number 12 to 22, both inclusive) of a given text file.
while read line;
do
    echo $line >> file.txt
done
    (head -n 22 | tail -11) < file.txt


