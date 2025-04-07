tm=`date +%H`
if [ $tm -ge 5 -a $tm -le 12 ]; then
echo "goood morning"
elif [ $tm -ge 12 -a $tm -le 17 ]; then
echo "goood afternoon "
elif [ $tm -ge 18 -a $tm -le 18 ]; then
echo "good evening"
else 
echo " good n8"
fi
