dayOfWeek(){
day=$1
month=$2
year=$3
y0=$(( $year-$(( 14-$month ))/12 ))
x=$(( $y0+$y0/4-$y0/100+$y0/400 ))
m0=$(( $month+12*$(( $((14-$month))/12 ))-2 ))
d0=$(( (( $day+$x+$(( 31*$m0 ))/12 ))%7 ))
if [ "$d0" == "0" ]
then
echo "Day is sunday"
elif [ "$d0" == "1" ]
then
echo "Day is monday"
elif [ "$d0" == "2" ]
then
echo "Day is Tuesday"
elif [ "$d0" == "3" ]
then
echo "Day is wednesday"
elif [ "$d0" == "4" ]
then
echo "Day is thursday"
elif [ "$d0" == "5" ]
then
echo "Day is friday"
elif [ "$d0" == "6" ]
then
echo "Day is saturday"
fi
}
echo "Enter day month year"
read d
read mon
read yer
dayOfWeek $d $mon $yer

