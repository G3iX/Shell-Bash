#! /bin/bash
echo "Write 15 numbers."
for (( i=0; i <= 14; i++ ))
do
echo "enter number # $[$i+1]:"
read temp
arr+=($temp)
if [ $i = 14 ]; then
echo "------------------"
echo "your nums are: " ${arr[@]}
#bubble_sort ${arr[@]}
#echo "sorted nums are: ${BSORT[@]}"
IFS=$'\n' sorted=($(sort -g <<<"${arr[*]}"))
echo "sorted nums are: " ${sorted[@]}
fi
done
