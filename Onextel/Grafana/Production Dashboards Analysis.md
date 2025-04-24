#grafana
#prometheus 

#### Metrics of nginx AURA:
1. 
HELP log_metric_counter_requests_total Total number of HTTP requests
TYPE log_metric_counter_requests_total counter log_metric_counter_requests_total{code="200",remote_addr="3.7.137.211",method="GET",path="/api/sms",api_key="lGaC6CBQ",server_name="api.onex-aura.com"} 72458
2. 
HELP log_metric_histogram_request_duration_seconds Distribution of request processing times
TYPE log_metric_histogram_request_duration_seconds histogram
log_metric_histogram_request_duration_seconds_bucket{le="0.1",code="200",method="GET",path="/api/sms",api_key="ijCq8o8J"} 127301
1. 
HELP log_metric_histogram_upstream_duration_seconds Distribution of upstream response times
TYPE log_metric_histogram_upstream_duration_seconds histogram
log_metric_histogram_upstream_duration_seconds_bucket{le="0.1",code="200",method="GET",path="/api/sms",api_key="ijCq8o8J"} 127304
2. 
HELP log_metric_counter_total_dlr_send Total number of DLR sends
TYPE log_metric_counter_total_dlr_send counter
log_metric_counter_total_dlr_send{api_key="oSjp1KAX",http_resp="200",url="https://st.in.webengage.com/tracking/privatessp-events"} 27982
3. 
HELP log_metric_histogram_dlr_response_time_seconds Distribution of DLR response times
TYPE log_metric_histogram_dlr_response_time_seconds histogram
log_metric_histogram_dlr_response_time_seconds_bucket{le="0.1",api_key="oSjp1KAX",http_resp="200",url="https://st.in.webengage.com/tracking/privatessp-events"} 25881


#### Dashboard 1: nginx AURA


4. Widget 1: Pie Chart: 
>Query: 
``` PROD:
round(sum by(code) (increase(log_metric_counter_requests_total{instance=~"$instance"}[$__range])))
```
- **`increase(log_metric_counter_requests_total{instance=~"$instance"}[$__range])`**:
    - **`increase`**: This function calculates the increase in the value of a counter over a specified time range. It helps in understanding how much the counter has increased during that period.
    - **`log_metric_counter_requests_total{instance=~"$instance"}`**: This part filters the `log_metric_counter_requests_total` metric based on the `instance` label, which matches the value of the `$instance` variable. This allows you to focus on a specific instance.
    - **`[$__range]`**: This specifies the time range over which the increase is calculated. The `$__range` variable represents the selected time range in the dashboard.
-  **`sum by(code)`**:
    - **`sum`**: This function sums up the values of the metrics.
    - **`by(code)`**: This groups the sum by the `code` label. It means the sum will be calculated separately for each unique value of the `code` label.
- **`round(...)`**:
    - **`round`**: This function rounds the result to the nearest integer. It helps in simplifying the output by removing decimal points.


```LOCAL
round(sum by(status) (increase(http_requests_total[$__range])))
```

> Log Example: 

```
log_metric_counter_requests_total{code="200",remote_addr="52.207.214.168",method="POST",path="/api/jsms",api_key="no_key",server_name="api.onex-aura.com"} 796
```

5. Widget1: FINAL: - per-second rate of increase in the `http_requests_total` metric over the past 1 minute for **each time series**.
	- If there are multiple time series (e.g., for different labels like `method`, `status`, `endpoint`), it calculates the rate for each of them individually

6. Widget 2: Request duration Percentiles (p99, p95, p90)
> [!IMPORTANT] 
> Must focus on Legend and value options for the values to show on tabular format

>Query: 
```PROD
histogram_quantile(0.99, sum by (le, path) (rate(log_metric_histogram_request_duration_seconds_bucket{instance=~"$instance"}[10m])))
```

```LOCAL
histogram_quantile(0.1, sum by (le, route) (rate(http_request_duration_seconds_bucket[1m])))
```
> [!IMPORTANT] 
**`rate()`**: Calculates the per-second rate of change for the histogram buckets over the specified time range (e.g., `[5m]` for 5 minutes).


>Log Example:
```
log_metric_histogram_request_duration_seconds_bucket{le="0.5",code="200",remote_addr="35.244.10.202",method="POST",path="/api/jsms",api_key="no_key"} 6168212
```
-> `le` stands for **less than or equal to**. indicates that 6168212 requests were processed with duration **less than or equal to 0.5 seconds** (500 milliseconds) for the specified attributes (HTTP code, remote address, method, etc.).

7. Widget 3: - Total HTTP req/s evaluated over 1 minute
- This expression aggregates the rates across all time series by summing them up.
- It provides a **global rate** of increase in `http_requests_total` over the past 1 minute, regardless of labels.

> Query: 
```PROD
sum(rate(log_metric_counter_requests_total{instance=~"$instance"}[1m]))
```

```LOCAL
sum(rate(http_requests_total[1m]))
```

>Log Example: 
```
log_metric_counter_requests_total{code="200",remote_addr="122.185.182.86",method="GET",path="/api/sms",api_key="vYzLxcY3",server_name="api.onex-aura.com"} 10556029
```

#### Dashboard 2: DLR Distribution Overview

8. Widget 1: DLR Response Code Distribution: (Pie Chart)
>Query: 
```
round(sum by(http_resp) (increase(log_metric_counter_total_dlr_send{instance=~"$instance"}[$__range])))
```
>For Example:
```
log_metric_counter_total_dlr_send{api_key="xluCMRUF",http_resp="200",url="https://in1.cb.wzrkt.com/sms/generic?account=W44-79Z-545Z"} 20686872
```

9. Widget 2: DLR Response Time Distribution
>Query:
```
sum by (api_key) (rate(log_metric_histogram_dlr_response_time_seconds_sum{instance=~"$instance"}[15m])) / sum by (api_key) (rate(log_metric_histogram_dlr_response_time_seconds_count{instance=~"$instance"}[15m]))
```
>For Example:
```
log_metric_histogram_dlr_response_time_seconds_sum{api_key="vUccmVCT",http_resp="200",url="https://in1.cb.wzrkt.com/sms/generic?account=W44-79Z-545Z"} 222110.33699815214
log_metric_histogram_dlr_response_time_seconds_count{api_key="vUccmVCT",http_resp="200",url="https://in1.cb.wzrkt.com/sms/generic?account=W44-79Z-545Z"} 6282983
```


------------------------------------------------------------------------
__Observations__:

```python
topk(20, sum by(api_key) (increase(log_metric_counter_requests_total{path="$path", code="$code", instance="$instance"}[$__range])))
```

```python
topk(
	20, 
	round(
		sum by(path) (
			increase(
				log_metric_counter_requests_total{ code="$code",instance=~"$instance"}
				[$__range]
			)
		)
	) > 0
)
```
