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
echo HEAD gets $count_head
echo TAIL gets $count_tail
if [ $count_head -gt $count_tail ]
then
	diff=$((count_head-count_tail))
	echo HEAD wins by $diff
elif [ $count_tail -gt $count_head ]
then
	diff=$((count_tail-count_head))
	echo TAIL wins by $diff
else
	echo It is a tie
fi
