#!/bin/bash
echo Welcome to the Flip Coin Simulator program
count_head=0
count_tail=0
while [ $count_head -lt 21 -a $count_tail -lt 21 ]
do
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
count_head=$((count_head+1))
else
count_tail=$((count_tail+1))
fi
done
if [ $count_head -gt $count_tail ]
then
	diff=$((count_head-count_tail))
	echo HEAD wins by $diff
elif [ $count_tail -gt $count_head ]
then
	diff=$((count_tail-count_head))
	echo TAIL wins by $diff
else
	while [ $diff -lt 2 ]
	do
		flip=$((RANDOM%2))
		if [ $flip -eq 0 ]
		then
			count_head=$((count_head+1))
		else
			count_tail=$((count_tail+1))
		fi
		if [ $count_head -gt $count_tail ]
		then
        		diff=$((count_head-count_tail))
		elif [ $count_tail -gt $count_head ]
		then
        		diff=$((count_tail-count_head))
		fi
	done

fi
echo HEAD counts to $count_head
echo TAIL counts to $count_tail
