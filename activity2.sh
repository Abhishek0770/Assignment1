# !/bin/bash
clear 
echo ----------------------------------------- 
echo '\tCalculate Electricity Charge' 
echo ----------------------------------------- 
echo Enter the Name 
read name 
echo Enter the current month rea ding 
read cmr 
echo Enter the last month reading 
read lmr 
echo Enter the Meter number 
read mno 
unit=$(expr $cmr - $lmr) 
if [ $unit -eq 0 ] 
then 
 charge=40 
elif [ $unit -gt 0 ] && [ $unit -le 100 ] 
then 
 charge=$(expr $unit \* 1) 
elif [ $unit -gt 100 ] && [ $unit -le 300 ] 
then 
 charge=$(expr 100 \* 1 + $unit - 100) 
elif [ $unit -gt 300 ] && [ $unit -le 500 ] 
then 
 charge=$(expr $unit \* 1 + 200 \* 2 + $unit - 300) 
elif [ $unit -gt 500 ] 
then 
 charge=$(expr 1400 + $unit - 400) 
fi 
echo -----------------------------------------  
echo '\tElectricity Billing' 
echo ----------------------------------------- 
echo "Name                  : $name" 
echo "Meter Number          : $mno" 
echo "Current Month reading : $cmr" 
echo "Last Month reading    : $lmr" 
echo "Unit                  : $unit" 
echo "Charge                : $charge" 
echo ----------------------------------------- 