gambler(){
stake=$1
goal=$2
times=$3
bets=0
wins=0
loss=0
echo "hi"
while [ $times -gt 0 -a $stake -ne $goal ]
do
echo "In for loop"
echo "entered while"
bets=$(( $bets + 1 ))
if (( $(awk -v r=0.$(( RANDOM )) -v condition=0.5 'BEGIN{ print (r<condition) }') ));
then
echo "entered if "
(( wins++ ))
stake=$(( $stake + 1 ))
else
(( loss++ ))
stake=$(( $stake - 1 ))
fi
(( times-- ))
echo "returning number of wins"
echo $wins
done
}
echo "enter stake amount"
read cash
echo "goal amount to be reached"
read max
echo "and No of times to gamble"
read NoOfTimes

gambler $cash $max $NoOfTimes
