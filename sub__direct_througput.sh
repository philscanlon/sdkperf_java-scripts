no_of_sub=$1
for ((i=1;i<=no_of_sub;i++))
do
taskset -c $((i+20)) nohup ./sdkperf_java.sh -cip=10.191.247.245 -stl=test/$i -cu=nomura-du@nomura  -cp=password -q &
done
