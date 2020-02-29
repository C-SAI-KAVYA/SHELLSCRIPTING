harmonicNumber(){
sum=0
decimal=1
num=$1
for ((i=1; i<=num; i++))
do
sum=$(echo $sum $decimal $i | awk '{print ( $1+=$2/$3 )}')
done
echo -n "The Total Harmonic Number is""$sum"
}
echo "Enter the number to find Harmonic"
read number
harmonicNumber $number
