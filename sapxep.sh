printf "Nhap so phan tu: "
read n
for((i=0;i<n;i++))
do
    printf "Nhap phan tu a[$i] : "
    read a[$i]
done

echo
echo "DAY SO VUA NHAP"
for((i=0;i<n;i++))
do
     printf "${a[$i]} \t"
done
echo
tong=0
for((i=0;i<n;i++))
do
    tong=`expr $tong + ${a[$i]}`
done

echo
echo "TONG CAC PHAN TU = " $tong
echo


for((i=0;i<n-1;i++))
do
    for((j=$i;j<n;j++))
    do
        if test ${a[$i]} -gt ${a[$j]}
	then
	    temp=${a[$i]}
	    a[$i]=${a[$j]}
	    a[$j]=$temp 
	fi
    done
done

echo
echo "DAY VUA SAP XEP"
for((i=0;i<n;i++))
do
     printf "${a[$i]} \t"
done
echo
