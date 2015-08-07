#!/bin/sh
# knowledge is power 
clear
# date +%FORMAT
# date +"%FORMAT"
# var=$(date +"%FORMAT")
now=$(date +"%T")
echo "time is $now" | tee -a results.txt

# declare ips[8]=('10.1.1.200' '10.1.1.201' '10.1.1.7' '10.1.1.11' '10.1.1.5' '10.1.1.8' '10.1.1.9' '10.1.1.101')
ips=(200 201 7 11 5 8 9 101)
# ips=('www.google.com' 'www.facebook.com')
for (( i = 0; i <${#ips[@]}; i++ ))
do
	ping -qc 3 '10.1.1'${ips[$i]} | tee -a results.txt
done