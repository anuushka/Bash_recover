Sample Input:
Namibia
Nauru
Nepal
Netherlands
NewZealand
Nicaragua
Niger
Nigeria
NorthKorea
Norway

#Display the entire array of country names, with a space between each of them.
paste -s -d " "

#Given a list of countries, each on a new line, your task is to read them into an array. Then slice the array and display only the elements lying between positions  and , both inclusive. Indexing starts from from 0
paste -s -d " "| cut -d " " -f 4-8

#From the given list, remove the names that contain 'a' or 'A' in them. If there are no names left after removing these characters, you should display a blank line.
while read line
do
    arr=("${arr[@]}" $line)
done

declare -a patter=( ${arr[@]/*[aA]*/})
echo ${patter[@]}


#Given a list of countries, each on a new line, your task is to read them into an array. 
#Then, concatenate the array with itself (twice) - so that you have a total of three repetitions of the original array - and then display the entire concatenated array, with a space between each of the countries' names.
a=$(paste -s)
echo $a $a $a

#Given a list of countries, each on a new line, your task is to read them into an array and then display the element indexed at 3. Note that indexing starts from 0.
paste -s -d ' ' | cut -d ' ' -f 4

#A single integer - the number of elements in the array.
while read line
do
    arr=("${arr[@]}" $line)
done

echo ${#arr[@]}()

#You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way:
#The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). 
#Then, display the entire array with a space between each country's names.
while read line
do
    arr=("${arr[@]}" $line)
done
echo ${arr[@]/[A-Z]/\.}

#There are N integers in an array A. All but one integer occur in pairs. Your task is to find the number that occurs only once.
#sort works on lines not space separated words
#uniq words on lines not space separated words
paste -s -d " " | cut -d " " -f 2- | tr ' ' '\n' | sort -n | uniq -u | paste -s -d " "

