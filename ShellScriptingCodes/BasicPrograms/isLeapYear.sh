
#!/bin/bash 
year=0
leapyear=0
read -p "Enter year: " year
if [ $year -gt 1000 ] ;
then
[ $(($year % 4)) -eq 0 ] && ([ $(($year % 100)) -ne 0 ] || [ $(($year % 400)) -eq 0 ]) && leapyear=1
echo -n "Is it a leap year? " ; [ $leapyear -eq 0 ] && echo "No" || echo "Yes" 
fi
