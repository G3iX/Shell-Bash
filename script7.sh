#! /bin/bash
echo "Write number from 1 to 5:"
read temp

if (( $temp > 0 && $temp<6 ))
then
#echo "good"
temp2=$temp
while [ $temp -le $(($temp2*50)) ]
do
  echo "temp now is $temp"
  temp=$(( $temp * 2 ))
done
echo "temp($temp) is now greater then " $(($temp2*50))
# ver 2 with no rec...
echo "temp2:"
echo $(($temp2))
echo "-----"
echo $(($temp2*2))
echo $(($temp2*4))
echo $(($temp2*8))
echo $(($temp2*16))
echo $(($temp2*32))
echo $(($temp2*64)) " > " $(($temp2*50))
#for (( i=0; i <= 5; i++ )); 
#do
else
echo "error! wrong nums";
fi
