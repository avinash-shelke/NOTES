## FLUENT BIT:
>[!IMPORTANT]
>On server="172.16.101.64", API and HUB is present. 
>```bash
>ssh onexteladmin@172.16.101.64
>```
>On server="172.16.101.80", NGINX is present.
>```bash
>ssh onexteladmin@172.16.101.80
>```
>Password: 
>```bash
>r7g842?/fYRz
>```


**1. API - (DLR_LOGGER):  

>[!IMPORTANT]
**DLR_LOGGER**: /home/onexteladmin/onextel/api/dlr_logger

Dlr_logger file of SBI: 
- Log for the same date *2025-04-03* with different *API_KEY*:
1. `DlrSend_kS0UZhPy_2025_4_3.log`
```json
{"time":"2025-4-3 16:15:28","api_key":"kS0UZhPy","method":"post","url":"https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbE86MWV4dGVsQDU2Nw=="},"payload":"msgid=2vDMqzcGgBGGzE5paIMP0scqUr0&mobile=xxxxxxxxx&sms_status=FAILED&error_code=999&delivery_time=1743675389&error_desc=unknown_error","http_resp":200,"submit_ts":1743677127938,"acked_ts":1743677128079}
{"time":"2025-4-3 16:15:28","api_key":"kS0UZhPy","method":"post","url":"https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbE86MWV4dGVsQDU2Nw=="},"payload":"msgid=2vDMeYNHgkqmxBGg1bDYLbXmXOB&mobile=xxxxxxxxx&sms_status=FAILED&error_code=999&delivery_time=1743675290&error_desc=unknown_error","http_resp":200,"submit_ts":1743677127945,"acked_ts":1743677128082}
{"time":"2025-4-3 16:15:28","api_key":"kS0UZhPy","method":"post","url":"https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbE86MWV4dGVsQDU2Nw=="},"payload":"msgid=2vDN6qNgkLi6Kr38py2iOxZ9GMP&mobile=xxxxxxxxx&sms_status=FAILED&error_code=999&delivery_time=1743675515&error_desc=unknown_error","http_resp":200,"submit_ts":1743677127934,"acked_ts":1743677128097}
{"time":"2025-4-3 16:15:28","api_key":"kS0UZhPy","method":"post","url":"https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbE86MWV4dGVsQDU2Nw=="},"payload":"msgid=2vDNHaVUVOdCMCVkTXQGemXtWMp&mobile=xxxxxxxxx&sms_status=FAILED&error_code=999&delivery_time=1743675600&error_desc=unknown_error","http_resp":200,"submit_ts":1743677127948,"acked_ts":1743677128097}
{"time":"2025-4-3 16:15:28","api_key":"kS0UZhPy","method":"post","url":"https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbE86MWV4dGVsQDU2Nw=="},"payload":"msgid=2vDNPxwO7bIrrxAk8cBgwNp4XQA&mobile=xxxxxxxxx&sms_status=FAILED&error_code=999&delivery_time=1743675668&error_desc=unknown_error","http_resp":200,"submit_ts":1743677127937,"acked_ts":1743677128100}
```
2. `DlrSend_4gKROZBd_2025_4_3.log`
```json
{"time":"2025-4-3 21:17:6","api_key":"4gKROZBd","method":"post","url":"https://pproddlrsms.bank.sbi:7446/bmg/delivery/onextelT","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbFQ6MmV4dGVsQDc0OA=="},"payload":"msgid=2vE12WwgeMchaabjjeKJYfiYQki&mobile=919897164738&sms_status=FAILED&error_code=164&delivery_time=1743695213&error_desc=Invalid Entity ID","http_resp":200,"submit_ts":1743695226561,"acked_ts":1743695226694}
{"time":"2025-4-3 21:17:23","api_key":"4gKROZBd","method":"post","url":"https://pproddlrsms.bank.sbi:7446/bmg/delivery/onextelT","header":{"Content-Type":"application/x-www-form-urlencoded","Authorization":"Basic b25leHRlbFQ6MmV4dGVsQDc0OA=="},"payload":"msgid=2vE15Uuv0c3sZSQviqIHDqQEJLt&mobile=9764340500&sms_status=FAILED&error_code=164&delivery_time=1743695236&error_desc=Invalid Entity ID","http_resp":200,"submit_ts":1743695243574,"acked_ts":1743695243605}
```


**2. HUB - (DLVR_ERROR_CODE)**


>[!IMPORTANT]
**DLVR_ERROR_CODE**: /tmp

- Log for the same date *2025-04-01* with different *API_KEY*:

![[Pasted image 20250406112249.png]]

filename:`1013_6_4_2025_dlvr_error_code.log`.
![[Pasted image 20250409102934.png]]

`1013_6_4_2025_dlvr_error_code.log`
```log
16:10:02,765
18:00:19,765
18:00:19,765
18:00:22,765
18:00:20,765
18:00:22,765
18:00:23,765
18:00:22,765
18:00:20,765
18:00:18,765
```
New Format: 
```log
16:10:02,765,1013
18:00:19,765,1013
18:00:19,765,1013
18:00:22,765,1013
18:00:20,765,1013
18:00:22,765,1013
18:00:23,765,1013
18:00:22,765,1013
18:00:20,765,1013
18:00:18,765,1013
```

3. **NGINX**: 

>[!IMPORTANT]
**NGINX**: /var/log/nginx

- Nginx Logs :  `sbiuatapi.onex-aura.com.log`
Search for the latest file using the command: `ls -lrth`

```bash
172.16.101.115 - - [09/Apr/2025:00:01:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.001 0.001 .
172.16.101.115 - - [09/Apr/2025:00:02:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.001 0.001 .
172.16.101.115 - - [09/Apr/2025:00:03:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.001 0.001 .
172.16.101.115 - - [09/Apr/2025:00:04:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.001 0.001 .
172.16.101.115 - - [09/Apr/2025:00:05:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.002 0.002 .
172.16.101.115 - - [09/Apr/2025:00:06:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.002 0.002 .
172.16.101.115 - - [09/Apr/2025:00:07:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.002 0.001 .
172.16.101.115 - - [09/Apr/2025:00:08:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.001 0.001 .
172.16.101.115 - - [09/Apr/2025:00:09:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.001 0.001 .
172.16.101.115 - - [09/Apr/2025:00:10:00 +0530] "GET / HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 SafeLine-CE/v8-0-2" 0.002 0.002 .
```


#### Regex for the SBI NGINX logs:
```regex
^(?<remote_addr>[^ ]*) - (?<remote_user>[^ ]*) \[(?<time>[^\]]*)\] "(?<method>\S+)(?: (?:https?:\/\/[^\/]+)?)?(?<path>\/[^\?\s]*)(?:\?(?<params>[^\s"]*))? HTTP\/[0-9.]+" (?<code>\d{3}) (?<body_bytes_sent>\d+) "(?<referer>[^"]*)" "(?<agent>[^"]*)" (?<request_time>[\d.]+) (?<upstream_response_time>[\d.]+) (?<pipe>[p\.])$
```

| **Field / Part**            | **OLD Regex**                                      | **NEW Regex**                       | **Difference / Improvement**                                                        |
| --------------------------- | -------------------------------------------------- | ----------------------------------- | ----------------------------------------------------------------------------------- |
| **URL Scheme + Host**       | `(?:https?://[^/]+)?`                              | `(?:https?:\/\/[^\/]+)?`            | 🔁 Escaped slashes properly in NEW for safety and clarity                           |
| **Path**                    | `(?<path>/[^ \?]*?)/?`                             | `(?<path>\/[^\?\s]*)`               | ✅ NEW uses `\s` instead of space for better matching; removes optional trailing `/` |
| **Params** (Query String)   | `(?<params>[^\"]*?)`                               | `(?<params>[^\s"]*)`                | ✅ NEW prevents params from including spaces; more precise                           |
| **HTTP Version**            | `HTTP/[0-9.]*`                                     | `HTTP\/[0-9.]+`                     | ✅ NEW requires at least one digit, escapes `/`, avoids matching empty version       |
| **Status Code** (`code`)    | `(?<code>[^ ]*)`                                   | `(?<code>\d{3})`                    | ✅ NEW expects exactly 3 digits (valid HTTP code)                                    |
| **Body Bytes Sent**         | `(?<body_bytes_sent>[^ ]*)`                        | `(?<body_bytes_sent>\d+)`           | ✅ NEW restricts to digits only (int), avoids garbage                                |
| **Request Time**            | `(?<request_time>[0-9.]*)`                         | `(?<request_time>[\d.]+)`           | ✅ NEW ensures at least one digit; avoids capturing empty strings                    |
| **Upstream Response Time**  | `(?<upstream_response_time>[0-9.]*)`               | `(?<upstream_response_time>[\d.]+)` | ✅ Same as above                                                                     |
| **Use of Lazy Quantifiers** | `*?`, `[^ ]*?`, etc.                               | Mostly removed                      | ✅ NEW avoids unnecessary laziness for performance and accuracy                      |
| **Escaping**                | Not fully escaped (`/`, `"`)                       | Properly escaped                    | ✅ NEW regex is more regex-safe and portable                                         |
| **Whitespace Handling**     | Uses `[ ]` literally                               | Uses `\s` (whitespace)              | ✅ More robust to varied spacing                                                     |
| **Regex Readability**       | Messier with mix of `[^ ]`, lazy patterns, and `/` | Cleaner, structured                 | ✅ NEW is easier to maintain and safer for production use                            |

#### Metrics: 
```metrics
# HELP log_metric_counter_total_dlr_send Total number of DLR sends
# TYPE log_metric_counter_total_dlr_send counter
log_metric_counter_total_dlr_send{api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
# HELP log_metric_histogram_dlr_response_time_seconds Distribution of DLR response times
# TYPE log_metric_histogram_dlr_response_time_seconds histogram
log_metric_histogram_dlr_response_time_seconds_bucket{le="0.1",api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
log_metric_histogram_dlr_response_time_seconds_bucket{le="0.5",api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
log_metric_histogram_dlr_response_time_seconds_bucket{le="1.0",api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
log_metric_histogram_dlr_response_time_seconds_bucket{le="3.0",api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
log_metric_histogram_dlr_response_time_seconds_bucket{le="5.0",api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
log_metric_histogram_dlr_response_time_seconds_bucket{le="+Inf",api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
log_metric_histogram_dlr_response_time_seconds_sum{api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 2.1840000000000006
log_metric_histogram_dlr_response_time_seconds_count{api_key="kS0UZhPy",http_resp="200",url="https://pproddlrsms.bank.sbi:7445/bmg/delivery/onextelO"} 43
# HELP log_metric_counter_requests_total Total number of HTTP requests
# TYPE log_metric_counter_requests_total counter
log_metric_counter_requests_total{code="404",method="GET",path="/"} 43
# HELP log_metric_histogram_request_duration_seconds Distribution of request processing times
# TYPE log_metric_histogram_request_duration_seconds histogram
log_metric_histogram_request_duration_seconds_bucket{le="0.1",code="404",method="GET",path="/"} 43
log_metric_histogram_request_duration_seconds_bucket{le="0.5",code="404",method="GET",path="/"} 43
log_metric_histogram_request_duration_seconds_bucket{le="1.0",code="404",method="GET",path="/"} 43
log_metric_histogram_request_duration_seconds_bucket{le="3.0",code="404",method="GET",path="/"} 43
log_metric_histogram_request_duration_seconds_bucket{le="5.0",code="404",method="GET",path="/"} 43
log_metric_histogram_request_duration_seconds_bucket{le="+Inf",code="404",method="GET",path="/"} 43
log_metric_histogram_request_duration_seconds_sum{code="404",method="GET",path="/"} 0.12800000000000009
log_metric_histogram_request_duration_seconds_count{code="404",method="GET",path="/"} 43
# HELP log_metric_histogram_upstream_duration_seconds Distribution of upstream response times
# TYPE log_metric_histogram_upstream_duration_seconds histogram
log_metric_histogram_upstream_duration_seconds_bucket{le="0.1",code="404",method="GET",path="/"} 43
log_metric_histogram_upstream_duration_seconds_bucket{le="0.5",code="404",method="GET",path="/"} 43
log_metric_histogram_upstream_duration_seconds_bucket{le="1.0",code="404",method="GET",path="/"} 43
log_metric_histogram_upstream_duration_seconds_bucket{le="3.0",code="404",method="GET",path="/"} 43
log_metric_histogram_upstream_duration_seconds_bucket{le="5.0",code="404",method="GET",path="/"} 43
log_metric_histogram_upstream_duration_seconds_bucket{le="+Inf",code="404",method="GET",path="/"} 43
log_metric_histogram_upstream_duration_seconds_sum{code="404",method="GET",path="/"} 0.13400000000000006
log_metric_histogram_upstream_duration_seconds_count{code="404",method="GET",path="/"} 43
```

