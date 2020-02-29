quadratic(){
a=$1
b=$2
c=$3
determinant=$(( $(( $b*$b-4*$a*$c )) ))
echo $determinant
sqrtValue=$(awk -v d=$determinant -F'[-,]' 'function abs(v){return v < 0 ? -v : v} BEGIN{print (sqrt(abs(d)))}')
echo $sqrtValue
root1=$(echo $b $sqrtValue $a | awk '{print((-$1+$2)/(2*$3))}')
echo "The roots are"
echo $root1
root2=$(echo $b $sqrtValue $a | awk '{print((-$1-$2)/(2*$3))}')
echo $root2
}
echo "Enter the values of a b c"
read a
read b
read c
quadratic $a $b $c
