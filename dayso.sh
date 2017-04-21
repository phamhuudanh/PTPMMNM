#-----------------------------------------------------------
# THUC HIEN NHAP DAY SO N PHAN TU TU BAN PHIM
# IN RA MAN HINH DAY VUA NHAP
#-----------------------------------------------------------

#commit lan 1
clear

echo "Nhap n: "
read n

sum=0
i=0

if [[ $n -gt 0 ]]
then

	while [[ $i -lt $n ]]
	do
		echo "Nhap so thu $(($i+1)) "
		read number
		eval arr[$i]=$number

		i=$(($i+1))
	
		#tinh tong
		sum=$(( $sum+$number ))


	done
else
	clear
	echo "N>0"

	exit 1
fi


echo "IN RA DAY VUA NHAP "
i=0
while [[ $i -lt $n ]]
do
	echo "arr[$i]= ${arr[$i]}"
	i=$(($i+1))

done
echo "TONG LA $sum"
#-----------------------------------------------------------
#commit lan 2
