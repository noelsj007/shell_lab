echo "Enter three integers"
read a b c
sum=`expr $a + $b + $c`
mean=`expr $sum / 3`
aa=$((($a - $mean) * ($a - $mean)))
bb=$((($b - $mean) * ($b - $mean)))
cc=$((($c - $mean) * ($c - $mean)))
sd=$( echo "sqrt(($aa + $bb + $cc) / 3)" | bc -l )
echo "sum=$sum"
echo "mean=$mean"
echo "Sd=$sd"
