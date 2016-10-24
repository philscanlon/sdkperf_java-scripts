no_of_pub=$1
no_of_topics=$3
for ((i=1;i<=$3;i++))
do
  for((j=1;j<=no_of_pub;j++))
  do
taskset -c 1-20  nohup ./sdkperf_c  -cip=10.191.247.245 -ptl=test/fo/$i -mn=1000000000 -mr=2500000  -cu=nomura-du@nomura  -cp=password -msa=$2 -psm -q >/dev/null 2>&1 &
  done
done
