#!/bin/bash
primeFactors(){
till=$1;
if [ $till -lt 1 ];then
echo "Enter number greater than 1"
exit 1
fi
i=2
echo "the prime factors are as follows"
for ((i;i<=$till;i++));do
if [ `expr $till % $i` -eq 0 ];then
echo $i
till=$(( $till / $i ))
i=$(( $i - 1 ))
fi
done
}
echo "Enter the number to find prime factors"
read number
primeFactors $number
