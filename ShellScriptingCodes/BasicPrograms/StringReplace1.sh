#!/bin/sh
replaceName(){
mainString="Hello <<UserName>>,How are you??"
find="<<UserName>>"
replace=$1
echo "$replace"
echo "$mainString"
echo "${mainString/$find/$replace}"
}
echo "Enter the user name to replace"
read name
replaceName $name


