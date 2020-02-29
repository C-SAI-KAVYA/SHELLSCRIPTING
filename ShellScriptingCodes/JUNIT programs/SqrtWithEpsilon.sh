
sqrtWithEpsilon(){
c=$1
t=$c
epsilon=-12.2817181715
expression1=$(( $t-$c/$t ))
expression2=$(echo $epsilon $t | awk '{print($1*$2)}')
expression3=$(echo $t $c | awk '{print(($2/$1+$1)/2)}')
sqrtValue=$(echo $t $c $epsilon $expression1 $expression2 $expression3 | awk -F '[-,]' 'function abs(v){return v < 0 ? -v : v}' 'BEGIN{print abs($4)} }')
sqrtValue1=$(awk -v exprs2=$expression2 -v exprs3=$expression3 'BEGIN{while(0 -gt exprs2){print exprs3; exit} }')
echo "The square root value is" $sqrtValue1
}
echo "Enter any integer value"
read int
sqrtWithEpsilon $int
