#Display the average of the N integers, rounded off to three decimal places.
Input Format:
The first line contains an integer, .
Each of the following  lines contains a single integer.

read N 
total=0
#avg=0
for ((i=0; i<$N;i++));
do
    read num
    total=$((total+num))
done
#echo $total
avg=$(echo "scale=4; $total/$N" | bc);
printf "%.3f\n" "$avg"
