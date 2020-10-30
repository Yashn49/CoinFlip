#!/bin/bash
echo "welcome o flip coin simulator program"
isHeads=0;
isTails=1;
coinFlip=$((RANDOM%2))
if [ $isHeads -eq $coinFlip ]
 then
  echo "heads is winner"
 else
  echo "tails is winner"
fi
read -p "enter a number you want loop to run: " num
count=0
count1=0
for ((i=0; i<num; i++))
do
 coinFlip=$((RANDOM%2))
 if [ $coinFlip -eq 0 ]
 then
  count=$((count+1))
 else
  count1=$((count1+1))
 fi
done
echo "Head has come $count times"
echo "Tail has come $count1 times"
