#!/bin/sh
clear
now=$(date +"%T")
echo "time is $now" | tee -a results.txt
ping -qc 3 '10.1.1.200' | tee -a results.txt
ping -qc 3 '10.1.1.201' | tee -a results.txt
ping -qc 3 '10.1.1.7' | tee -a results.txt
ping -qc 3 '10.1.1.11' | tee -a results.txt
ping -qc 3 '10.1.1.5' | tee -a results.txt
ping -qc 3 '10.1.1.8' | tee -a results.txt
ping -qc 3 '10.1.1.9' | tee -a results.txt
ping -qc 3 '10.1.1.101' | tee -a results.txt
