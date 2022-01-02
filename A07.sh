#!/bin/bash
<<Documentation
Name: Muhammed Shibin Km
Date:18-12-2021
Description:Read 'n' and generate a pattern
Sample Input:Enter the limit : 10
Sample Output:0,1,1,2,3,5,8,13,21,34
Documentation
first=0
second=1
result=0
read -p "Enter the limit : " num
if [ $num -lt 0 ]
then
	echo "Error : Please enter only positive numbers."
else
    	echo -n "$first,$second"
	limit=$(( $num -2 ))
	while [ $result -lt $limit ]
	do
		result=$(( $first + $second ))
		echo -n ",$result"
		first=$second
		second=$result
	done
	echo
fi






