#!/bin/bash -x
echo Welcome to the Flip Coin Simulator program
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
	echo HEADS
else
	echo TAILS
fi

