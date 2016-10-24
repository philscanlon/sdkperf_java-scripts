no_of_sub=$1
echo "Number of subs$no_of_sub"
for ((i=1;i<=$no_of_sub;i++))
do
taskset -c $((i+15)) nohup ./sdkperf_java.sh -cip=10.191.247.245 -asw=255 -stl=test/gm/$i -tte=1 -pep='r' -pea=0  -cu=nomura-gu@nomura  -cp=password  -q &
done
