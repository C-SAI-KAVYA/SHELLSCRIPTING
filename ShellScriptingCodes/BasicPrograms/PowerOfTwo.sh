#!/bin/bash
powerOfTwo(){
echo "Enter a Number"
read n
echo "Enter Range"
read r
i=0
while [ $i -le $r ]
do
    echo " $n pow $i = $((n**i)) "
    i=`expr $i + 1`
done
}
powerOfTwo
