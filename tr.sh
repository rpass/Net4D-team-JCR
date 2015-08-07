#!/bin/sh

#ip_addresses=('10.1.1.5' '10.1.1.7' '10.1.1.8' '10.1.1.9' '10.1.1.11' '10.1.1.101' '10.1.1.200' '10.1.1.201')
#ip_addresses=('google.com')
now=$(date +"%T")
while [[ true ]]; do
	echo "Time: $now" | tee -a results.txt
	traceroute 10.1.1.5 | tee -a 10.1.1.5.txt
	traceroute 10.1.1.7 | tee -a 10.1.1.7.txt
	traceroute 10.1.1.8 | tee -a 10.1.1.8.txt
	traceroute 10.1.1.9 | tee -a 10.1.1.9.txt
	traceroute 10.1.1.11 | tee -a 10.1.1.11.txt
	traceroute 10.1.1.101 | tee -a 10.1.1.101.txt
	traceroute 10.1.1.200 | tee -a 10.1.1.200.txt
	traceroute 10.1.1.201 | tee -a 10.1.1.201.txt
 	sleep 10
done

