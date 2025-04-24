5 FEB 2025:
- [x] Widget: NGINX Request Duration Percentiles (p99, p95, p90): implement an Alert that fires if  P99 takes more than 1s for 1 minute. 
- [x] Widget: DLR Response Time Distribution: Create an Alert that fires if an apikey takes more than 0.5s for 5 minute.
- [x] To fire alert when a particular customer has non 200 status for the request more than 10% of the total responses. It must fire alert if non 200 status are more than 10% for 10 minutes.
- [ ] F5 LOAD BALANCER requirements
- [x] Identify the methods to download or save Dashboard, Panel and queries
- [ ] 


Create SMTP server:
1. https://mailtrap.io/blog/setup-smtp-server/

DOUBTS: 
1. What should be the duration for which to check the failure percentage.
Example:
30min![[Pasted image 20250206150317.png]]
2 hour:
![[Pasted image 20250206150431.png]]
24 hour: 
![[Pasted image 20250206150501.png]]
```python
(sum by(api_key) (increase(log_metric_counter_total_dlr_send{http_resp!="200"}[6h])) / sum by(api_key) (increase(log_metric_counter_total_dlr_send[6h]))) * 100
```
1. What should be the pending duration (time after which the alert is triggered, once threshold is breached and remains in breached state)
2. By default the links in the Alerts are consisting of localhost in it, can only be accessed when logged into VM.
3. Custom templates must be introduced so as to access the Dashboard.


#### Dynamically Update the Prometheus configuration file
1. ![[Pasted image 20250227105141.png]]
2. 


## Failure rate per PorterID
```promql
(sum by (pid) (error_code_dlrvd{error_code!="000"}) / sum by (pid) (error_code_dlrvd)) * 100
```


# HUB Queries:

`rate(queued{instance="$INSTANCE"}[1m])`
rate(submitted{instance="$INSTANCE"}[1m])
rate(dlvrd_acked{instance="$INSTANCE"}[1m])
rate(dlvrd{instance="$INSTANCE"}[1m])

rate(acked{instance="$INSTANCE"}[1m])




# sdjjdklf
pause, ready,move  ---- hub ----- bind/unbind ---- telco



SBI UAT
>[!IMPORTANT]
 `cd /var/log/nginx`
 etc/fluent-bit
 work/api/

**SBI**:
- Fluent Bit 
    - konse server pr nginx hai vha Fluent Bit, Grafana Prometheus dalna hai. 
    - konse server pr api hai vha Fluent Bit, Grafana Prometheus dalna hai.
    - konse server pr hub hai vha Fluent Bit, Grafana Prometheus dalna hai.
- 
- For Nginx and Api the Fluent bit need to be copy pasted in it. After considering few parser and related log extraction. 
- For Hub, the Fluent Bit need to be created.


```python
(sum by(api_key) (increase(log_metric_counter_total_dlr_send{http_resp!="200"}[30m])) * 100) / sum by(api_key) (increase(log_metric_counter_total_dlr_send[30m]))
```
