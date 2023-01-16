echo "Copy 1 directory to another shell-script"
echo "enter directory name to copy: "
read temp
echo "enter directory copy name: "
read tempname
echo "proccessing.."
 if [ $temp != $tempname ]; then
 cp -r $temp $tempname
 else
 echo "error! same directory name!"
 fi
echo "done"
