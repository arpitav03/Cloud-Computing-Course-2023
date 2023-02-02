#! /bin/bash

echo "Hello World, you are in $0, and going to test cpu!"

PRIMES_END=("35000" "350000" "6000000")
MAX_TIME=("10" "30" "50")
NUM_THREADS=("1" "2" "16")
TOTAL_RUNS=5
TOTAL_CASES=3

for ((i=0; i<$TOTAL_CASES;i++))
do
	echo "Starting ${i+1}st Test Case"
	for (( j=1; j <= $TOTAL_RUNS; j++ ))
	do
		echo "Running ${j}st run of Test Case ${i+1}"
		sysbench cpu --threads=${NUM_THREADS[$i]} --cpu-max-prime=${PRIMES_END[$i]} --time=${MAX_TIME[$i]} run
		echo "Completed ${j}st run of Test Case ${i+1}"
	done
	echo "Completed ${i}st Test Case"
done

