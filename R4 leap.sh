if [ $# -gt 1 ]
then
echo "syntax is $0 or $0 <year>"
exit 1
fi

if [ $# -eq 0 ]
then
year=`date +%Y`
elif [ $# -eq 1 ]
then
year=$1
fi


if [ `expr $year % 400` -eq 0  -o  `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 ]
then
echo "$year is leap year"
else
echo "$year not leap year"
fi
