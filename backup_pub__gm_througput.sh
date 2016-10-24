max_pub_rate_per_pub=20000
no_of_pub=$(($((120000000/$1))/$max_pub_rate_per_pub))
if(("$no_of_pub" >20))
then
  bal_pub=$(($no_of_pub-20))
  no_of_pub=20
  max_pub_rate_per_pub=$(($max_pub_rate_per_pub+$(($((bal_pub*20))/20))))
fi
#no_of_pubs=$(($((120000000/$2))/166000))
echo "Number of publishers starting : $no_of_pub"

for ((i=1;i<=$no_of_pub;i++))
do
taskset -c $i nohup ./sdkperf_java.sh -cip=10.191.247.245 -ptl=test/gm/$i -mn=1000000000 -mr=$max_pub_rate_per_pub  -cu=nomura-gu@nomura  -cp=password -msa=$1 -psm -mt=persistent -q -nagle &
done
