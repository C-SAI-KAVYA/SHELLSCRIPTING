declare -A BOARD
rows=3
columns=3
isEmpty=true
player=0
retVal=0

initBoard(){
echo "in initBoard"
echo "Tic Tac Toe game"
echo "Computer is O"
echo "player is X"
length=9
echo "Length of the array is " "$length"
for ((i=0;i<$length;i++))
do
iLength=3
echo "The iLength is  :" "$iLength"
	for((j=0;j<$iLength;j++))
	do
		BOARD[$i,$j]=-10;
	done
done
echo "The BOARD Array values are"
for ((i=0;i<$rows;i++))
do
        for((j=0;j<$columns;j++))
        do
                echo -n ${BOARD[${i},${j}]} " "
        done
	echo ""
done

echo "Board is this : "
dispBoard
}
dispBoard(){
echo "in dispBoard"
count=0
for ((i=0;i<3;i++))
do
	echo "---------------"
	echo -n "||"
	for ((j=0;j<3;j++))
	do
		if [ "${BOARD[${i},${j}]}" == "0" ]
		then
			(( count++ ))
			echo -n " O |"
		elif [ "${BOARD[${i},${j}]}" == "1" ]
		then
			(( count++ ))
			echo -n " X |"
		else
			echo -n "   |"
		fi
	done
			echo "|"
done
if [ "$count" == "9" ]
then
	echo "In count If making isEmpty false"
	isEmpty=false
fi
echo "---------------"
}
putValue(){
echo "In putValue"
echo "the putValueExpr1 is : " "$putValExpr1"
ivalue=`expr $(( RANDOM*10 )) % 3`
echo "The value of random i is :" "$ivalue"
jvalue=`expr $(( RANDOM*10 )) % 3`
echo "The value of random j is :" "$jvalue"
putValExpr1=`expr $player % 2`
echo "putValue Expression is " "$putValExpr1"
if [ "$putValExpr1" == "1" ]
then
	i=$ivalue
	echo $i
	j=$jvalue
	echo $j
else
	echo "Enter the value of x and y"
	read i
	read j
fi
if [ "${BOARD[${i},${j}]}" == "-10" ]
then
putValExpr1=`expr $player % 2`
	if [ "$putValExpr1" == "0" ]
	then
		BOARD[$i,$j]=0
	else
		BOARD[$i,$j]=1
		echo "Computer Choosing  " "$i" " " "$j"
	fi
else
	putValue
fi
}
winner(){
echo "in winner"
playerMulThree=$(($player*3))
echo "The player multiplied with three is " "$playerMulThree"
zero=0
one=1
two=2
check1=`expr ${BOARD[$zero,$zero]} + ${BOARD[$zero,$one]} + ${BOARD[$zero,$two]}`
echo "The check1 is " "$check1"
check2=`expr ${BOARD[$one,$zero]} + ${BOARD[$one,$one]} + ${BOARD[$one,$two]}`
echo "The Check2 is " "$check2"
check3=`expr ${BOARD[$two,$zero]} + ${BOARD[$two,$one]} + ${BOARD[$two,$two]}`
echo "The check3 is " "$check3"
check4=`expr ${BOARD[$zero,$zero]} + ${BOARD[$one,$zero]} + ${BOARD[$two,$zero]}`
echo "The check4 is " "$check4"
check5=`expr ${BOARD[$zero,$one]} + ${BOARD[$one,$one]} + ${BOARD[$two,$one]}`
echo "The check5 is " "$check5"
check6=`expr ${BOARD[$zero,$two]} + ${BOARD[$one,$two]} + ${BOARD[$two,$two]}`
echo "The check6 is " "$check6"
check7=`expr ${BOARD[$zero,$zero]} + ${BOARD[$one,$one]} + ${BOARD[$two,$two]}`
echo "The check7 is " "$check7"
check8=`expr ${BOARD[$two,$zero]} + ${BOARD[$one,$one]} + ${BOARD[$zero,$two]}`
echo "The check8 is " "$check8"
if [ "$check1" == "$playerMulThree" ] || [ "$check2" == "$playerMulThree" ] || [ "$check3" == "$playerMulThree" ] || [ "$check4" == "$playerMulThree" ] || [ "$check5" == "$playerMulThree" ] || [ "$check6" == "$playerMulThree" ] || [ "$check7" == "$playerMulThree" ] || [ "$check8" == "$playerMulThree" ]
then
retVal=1
echo $retVal
fi
}

play(){
echo "In play"
initBoard
while [ "$isEmpty" = "true" ]
do
echo "In play while"
	echo "players turn"
	putValue
	dispBoard
	winner
	echo "the Value returned is : " "$retVal"
	if [ "$retVal" == "1" ]
	then
		echo "player won"
		exit
	fi
	player=1
	echo "Computers turn"
	putValue
	dispBoard
	winner
	echo "The retval obtained is : " "$retVal"
	if [ "$retVal" == "1" ]
	then
		echo "Computer won"
		exit
	fi
	player=0
done
}
play
