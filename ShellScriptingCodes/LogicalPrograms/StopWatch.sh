elapsedTime(){
echo "Enter start to start the stopwatch "
read startTime
milliseconds=0
seconds=0
minutes=0
hours=0
days=0
if (( $startTime == "start" || $startTime == "START" )) 
then
while [ "$endTime" != "end" ]
do
echo "entered while loop"
(( milliseconds++ ))
echo $milliseconds
if [ "$milliseconds" -eq 60 ]
then
echo "entered milliseconds if condition"
milliseconds=0
(( seconds++ ))
echo -n " : "$seconds
fi
if [ "$seconds" -eq 60 ]
then
echo "entered seconds if condition"
seconds=0
(( minutes++ ))
echo -n " : "$minutes 
fi
if [ "$minutes" -eq 60 ]
then
echo "entered hours if condition"
minutes=0
(( hours++ ))
echo -n " : "$hours 
fi
if [ "$hours" -eq 24 ]
then 
echo "entered days if condition"
hours=0
(( days++ ))
echo -n " : "$days
fi
read end
done
fi
echo $days $hours $minutes $seconds $milliseconds
echo "The elapsed time is " "$days" "day/s : " "$hours" "hours :" "$minutes" "minutes : " "$seconds" "seconds :" "and" "$milliseconds" "ms"
#echo "The elapsed time is : "
#echo $elapseTime
}
elapsedTime
