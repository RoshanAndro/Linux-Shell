if [ $# -ne 1 ]; then
echo " Syntax is $0 <filename> "
exit 0
fi

tt=`tty`
exec<$1

while read line
do 
nol=`expr $nol + 1`
set $line > /dev/null
nowd=`expr $nowd + $#`
done

echo "No.of words is $nowd and No.of lines are $nol"

exec<$tt

exit 0
