no_of_sub=$1
for ((i=1;i<=no_of_sub;i++))
do
    taskset -c $i+21 nohup ./sdkperf_c  -cip=10.191.247.245 -stl=test/fo/$i -cu=nomura-du@nomura  -cp=password -q >/dev/null 2>&1  &
done
