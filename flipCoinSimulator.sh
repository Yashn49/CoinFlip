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
