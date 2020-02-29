windChill(){
temparature=$1
speed=$2
if [ "$temparature" -lt 50 -a "$speed" -lt 120 -o "$speed" -gt 3 ]
then
echo "Entered if Loop"
w=$(echo $temparature $speed | awk '{print (35.74+0.6215*$1+(0.4275*t-35.75)*($speed**0.16))}')
echo "The effective temparature value is "$w
else
echo 0
fi
}
echo "Enter temparature and speed"
read temp
read v
windChill $temp $v
