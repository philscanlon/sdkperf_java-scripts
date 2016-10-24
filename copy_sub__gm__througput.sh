no_of_sub=$1
echo "Number of subs$no_of_sub"
for ((i=1;i<=$no_of_sub;i++))
do
taskset -c $((i+10)) nohup ./sdkperf_java.sh -cip=10.191.247.245 -asw=255 -stl=test/gm/$i -sql=test/gm/$i -cc=1  -pep='r' -pea=0  -cu=nomura-gu@nomura  -cp=password  -q -epl="jcsmp.CLIENT_CHANNEL_PROPERTIES.ReceiveBuffer,16777216" -nagle &
done
