cd /home/asbiuat1/solace/samples/classes
java -cp .:javax.jms-3.1.1.jar:commons-logging-1.1.3.jar:commons-lang-2.6.jar:sol-sdkperf-jms-7.2.1.13.jar:sol-jms-7.2.1.148.jar:sol-common-7.2.1.148.jar:sol-jcsmp-7.2.1.148.jar com.solacesystems.jms.samples.SolJMSProducer -host smf://10.191.247.245  -username nomura-gu -password password -vpn nomura -flowCount 16000
cd /home/asbiuat1/solace/sdkperf
