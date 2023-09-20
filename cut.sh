#https://www.geeksforgeeks.org/cut-command-linux-examples/

#cut1 For each line of input, print its  character on a new line for a total of  lines of output.
while read line;
do 
    echo $line | cut -c3
done

#cut2 Display the 2nd and 7th character from each line of text.
while read line;
do 
echo $line | cut -c 2,7;
done 

#cut3 Display a range of characters starting at the  position of a string and ending at the  position (both positions included).
while read line;
do
echo $line | cut -c 2-7;
done

#cut4 Display the first four characters from each line of text.
while read line;
do
echo $line | cut -c 1-4;
done

#cut5 Given a tab delimited file with several columns (tsv format) print the first three fields.
while read line;
do 
echo "$line" | cut -f 1-3;
done

#cut6 Print the characters from thirteenth position to the end.
while read line;
do 
echo "$line" | cut -c 13-;
done 

#cut7 Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.
while read line;
do 
echo "$line" | cut -d " " -f 4;
done 

#cut8 Given a sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words.
while read line;
do 
echo "$line" | cut -d " " -f 1-3;
done 

#cut9 Given a tab delimited file with several columns (tsv format) print the fields from second fields to last field.
while read line;
do 
echo "$line" | cut -f 2-;
done 



