#Display the last 20 lines of an input file.
while read line;
do
    echo $line >> file.txt
done
     tail -20 < file.txt
     
#Display the last  characters of an input file.
while read line;
do
    echo $line >> file.txt
done
     tail -c 20 < file.txt


