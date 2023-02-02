#! /bin/bash

echo "Hello World, you are in $0, and going to test fileio"

NUM_THREADS=("4" "16" "8")
TOTAL_FILE_SIZES=("2G" "5G" "4G")
FILE_MODE=("rndwr" "seqrewr" "rndrw")
TOTAL_RUNS=5
TOTAL_CASES=3

for ((i=0; i<$TOTAL_CASES;i++))
do
	echo "*****************************Starting ${i+1}st Test Case***************************************"
	for (( j=1; j <=$TOTAL_RUNS; j++ ))
	do
		echo "Running ${j}st run of Test Case ${i+1}"
		sysbench --threads=${NUM_THREADS[$i]} fileio --file-total-size=${TOTAL_FILE_SIZES[$i]} --file-test-mode=${FILE_MODE[i]} prepare
		sysbench --threads=${NUM_THREADS[$i]} fileio --file-total-size=${TOTAL_FILE_SIZES[$i]} --file-test-mode=${FILE_MODE[i]} run
		sysbench --threads=${NUM_THREADS[$i]} fileio --file-total-size=${TOTAL_FILE_SIZES[$i]} --file-test-mode=${FILE_MODE[i]} cleanup
		echo "Completed ${j}st run of Test Case ${i+1}"
	done
	echo "*****************************Completed ${i}st Test Case***************************************"
done

