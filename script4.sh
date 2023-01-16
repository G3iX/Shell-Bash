#! /bin/bash
echo "Copy 1 file to another shell-script"
echo "enter file name to copy: "
read temp
echo "enter copy name: "
read tempname
echo "proccessing.."
if [ -f /home/serhii2/student/lab5/$temp ]; then 
if [ $temp != $tempname ]; then
cp -i $temp $tempname
else
echo "error! same file named read!"
fi
else
echo "error! file do not exist!"
fi
