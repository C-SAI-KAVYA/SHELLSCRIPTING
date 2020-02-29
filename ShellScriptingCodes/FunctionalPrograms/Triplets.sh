triplets(){
length=$1
count=0
declare -A arr
echo "enter the array elements"
for(( i=0;i<length;i++ )) do
read line
arr[$i]=$line
done

for(( i=0;i<length;i++ )) do
for(( j=$i+1;j<length;j++ )) do
for(( k=$j+1;k<length;k++ )) do
if [ `expr ${arr[$i]} + ${arr[$j]} + ${arr[$k]}` -eq 0 ];then
echo ${arr[$i]} " " ${arr[$j]} " " ${arr[$k]}
(( count++ ))
fi
done
done
done
echo $count
}

echo "Enter the length of the array"
read len
triplets $len
