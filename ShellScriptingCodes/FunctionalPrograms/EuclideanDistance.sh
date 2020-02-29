#!/bin/bash
euclideanDistance(){
x1=0
y1=0
x2=$1
y2=$2
a=$(( $(( $(( $x1-$x2 ))**2 ))+$(( $(( $y1-$y2 ))**2 )) ))
echo $a
dist=$(awk -v x=$a 'BEGIN{print sqrt(x)}')
echo "The Euclidean distance is : "$dist
}
echo enter two values
read x 
read y
euclideanDistance $x $y
