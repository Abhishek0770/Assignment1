# !/bin/bash

# Take user Input
echo "Enter Two numbers : "
read number1
read number2
echo " Enter the principle value: "
read p
echo " Enter the rate of interest:"
read r
echo " Enter the time period in years:"
read t
# Input type of operation
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Simple Interest"
read ch

# Switch Case to perform
# calculator operations
case $ch in
1)res=`echo $number1 + $number2 | bc`
;;
2)res=`echo $number1 - $number2 | bc`
;;
3)res=`echo $number1 \* $number2 | bc`
;;
4)res=`echo "scale=2; $number1 / $number2" | bc`
;;
5)res= `expr $p \* $t \* $r / 100`
;;
esac
echo "Result : $res"

