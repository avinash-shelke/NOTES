>[!IMPORTANT]
>Prerequisites: 
>	1. Java greater than 11 must be installed.

1. Download the latest version of JMeter using `wget`: 
```bash
wget https://downloads.apache.org/jmeter/binaries/apache-jmeter-5.5.tgz
```
1. Extract the tar.gz file: 
```bash
tar -xvzf apache-jmeter-5.5.tgz
```
1. Navigate to JMeter directory and then to bin: 
```bash
cd apache-jmeter-5.5/bin
```
1. Run the JMX file in the VM `onexadmin@10.20.3.64`: 
```bash
./jmeter.sh -n -t /home/onexadmin/17JAN_infi1_v2_perf.jmx -l /home/onexadmin/jmeter_csvreports/25FEB1455MON_run1.csv -e -o /home/onexadmin/jmeter_htmlreports/25FEB1455MON_ru
n1_report
```

---

>[!NOTE]
>1. The port mapped to 8081 is the one which is exposed to provide the metrics at /metric endpoint. (i.e. for Hub in VM: 10.20.3.62 which is 9727 )
>	![[Pasted image 20250225165604.png]]
>	
>	Similarly, for API in the VM: 10.20.3.63 the port mapped to 8081 is 9100
>	![[Pasted image 20250225170214.png]]
>



