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
  if [ $count -eq 21 ]
   then
    break
  fi
 else
  count1=$((count1+1))
  if [ $count1 -eq 21 ]
   then
    break
  fi
 fi
done
echo "Head has come $count times"
echo "Tail has come $count1 times"
if [ $count -gt $count1 ]
 then
  echo "Heads wins"
 elif [ $count1 -gt $count ]
 then
  echo "Tails wins"
 else
  echo "It's a tie"
fi
while(true)
 do
  if [ $(($count-$count1)) -eq 2 -o $(($count1-$count)) -eq 2 ]
   then
    echo "MINIMUM DIFFERENCE 2 REACHED AS HEAD=$count and TAIL=$count1"
     break
  fi
done
