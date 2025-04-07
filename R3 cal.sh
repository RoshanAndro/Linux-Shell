if [ $# -ne 3 ]
then
echo "syntax is $0 <no1> [operator] <no2> "
else
case $2 in
+) echo `expr $1 + $3`;;
-) echo `expr $1 - $3`;;
x) echo `expr $1 \* $3`;;
/) echo `expr $1 / $3`;;
%) echo `expr $1 % $3`;;
*) echo "invalid operator"
esac
fi
