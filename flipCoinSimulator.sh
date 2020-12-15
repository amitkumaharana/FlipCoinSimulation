#!/bin/bash
echo Welcome to the Flip Coin Simulator program
count_head=0
count_tail=0
for((i=0;i<20;i++))
do
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
count_head=$((count_head+1))
else
count_tail=$((count_tail+1))
fi
done
echo "HEAD shows for $count_head times"
echo "TAIL shows for $count_tail times"
