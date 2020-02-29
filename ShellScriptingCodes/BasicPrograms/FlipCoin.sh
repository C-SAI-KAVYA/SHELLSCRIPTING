#!/bin/bash
flipCoin(){
heads=0
tails=0
times=$1
percent=100
#condition=0.5
#flip=0.$(( RANDOM ))
echo "$times"
echo "$flip"
for ((num=1;num<=$times;num++))
do
if (( $(awk -v flip=0.$(( RANDOM )) -v condition=0.5 'BEGIN{ print (flip>condition) }') ));
then
(( heads++ ))
echo $num
else
(( tails++ ))
echo $num
fi
done
echo "No of Heads Occured :"$heads
echo "No of Tails Occured :"$tails
headsPercentage=$(echo $heads $times $percent | awk '{printf "%f",($1/$2)*$3 }')
tailsPercentage=$(echo $tails $heads $percent | awk '{printf "%f",($1/$2)*$3 }')
echo $headsPercentage $tailsPercentage
} 
echo "Enter Number of times you want to flip the coin"
read times
flipCoin $times
