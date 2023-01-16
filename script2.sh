#!/bin/sh
echo "enter date (DD.MM.YYYY): "
read date
dateD_var=`echo $date | cut -d '.' -f1`
dateM_var=`echo $date | cut -d '.' -f2`
dateY_var=`echo $date | cut -d '.' -f3`

#echo "field day" 
#echo "${dateD_var}"
#echo "field month"
#echo "${dateM_var}"
#echo "field year"
#echo "${dateY_var}"
#IFS='.' read -r -a date_array "$date" 
#for elem in "${date_array[@]}"; do
#    echo elem
#done
date -u '+%A' -d "$dateY_var$dateM_var$dateD_var" | awk '{print $1}'
#date -j -f ?-u '%d.%m.%Y' "$date" | awk '{print $1}'
