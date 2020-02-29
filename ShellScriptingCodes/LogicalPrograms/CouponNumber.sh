random(){
	random=$((RANDOM%10))
	((count++))
}
compare(){
for (( i=0;i<${#array[@]};i++ ))
do
        if [ ${array[${i}]} -eq $random ]
        then
	val=0
break
        else
        val=1
        fi
done
}

read -p "arraylength:" no
declare -a array
i=0
distinct=0
count=0
while [ ${#array[@]} -lt $no ]
do
random $no
compare $random
#echo "val : $val "
	if [[ ${#array[@]} -eq 0 ]] || [[ $val -eq 1 ]]
	then
	array[${i}]=$random
	((distinct++))
	fi
((i++))
done
echo "No of time the Random function called:" $count
random $no
echo "Distinct Array : ${array[@]}"
