Sample Input:
00
00
01
01
00
00
02
02

#Given a text file, remove the consecutive repetitions of any line.
uniq 

#In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it.
uniq -c | cut -c7-

#Given a text file, count the number of times each line repeats itself (only consider consecutive repetions). Compare consecutive lines in a case insensitive manner
uniq -c -i | cut -c7-

#Given a text file, display only those lines which are not followed or preceded by identical replications.
uniq -u
