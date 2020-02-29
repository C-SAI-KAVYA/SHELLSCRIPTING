#!/bin/bash
declare -A notes 
declare -A cash
notes[7]=1
notes[6]=2
notes[5]=5
notes[4]=10
notes[3]=50
notes[2]=100
notes[1]=500
notes[0]=1000
echo "The Array values are"
for ((j=0;j<8;j++))
do
	echo -n ${notes[$j]} " "
done
echo 
rem=0
total=0
i=0
calculate(){
money=$1
cash[0]=${notes[0]}
cash[1]=${notes[1]}
cash[2]=${notes[2]}
cash[3]=${notes[3]}
cash[4]=${notes[4]}
cash[5]=${notes[5]}
cash[6]=${notes[6]}
cash[7]=${notes[7]}
echo

if [ "$money" == "0" ]
then
	return -1
else
	if [ $money -gt ${notes[$i]} -o $money -eq ${notes[$i]} ]
	then
		iValue=${cash[$i]}
		calculatedNotes=$((money / iValue))
		rem=`expr $money % ${cash[$i]}`
		money=$rem
		total=$((total+calculatedNotes))
		echo ${cash[$i]} "no of notes " $calculatedNotes
	fi
	(( i++ ))
	calculate $money
	return $i
fi
}
echo "Enter the amount : "
read amount
calculate $amount
total=$calculate
