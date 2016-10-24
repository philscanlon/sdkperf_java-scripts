no_of_pub=$1
for ((i=1;i<=no_of_pub;i++))
do
taskset -c $i nohup ./sdkperf_java.sh  -cip=10.191.247.245 -ptl=test/$i -mn=1000000000 -mr=2500000  -cu=nomura-du@nomura  -cp=password -msa=$2 -psm -q &
done
