# TODOS
- [x] Create Questions for the Campus Hiring (30 MCQs and 15 Coding Questions).
- [x] Python Script to 
- [x] Widget: NGINX Request Duration Percentiles (p99, p95, p90): implement an Alert that fires if  P99 takes more than 1s for 1 minute. 
- [x] Widget: DLR Response Time Distribution: Create an Alert that fires if an apikey takes more than 0.5s for 5 minute.
- [x] To fire alert when a particular customer has non 200 status for the request more than 10% of the total responses. It must fire alert if non 200 status are more than 10% for 10 minutes.
- [x] Identify the methods to download or save Dashboard, Panel and queries
- [x] F5 LOAD BALANCER requirements (currently running in VM **10.20.3.52**).
- [x] Document the Installation and setup of Prometheus.
- [x] Document the Installation and setup of Grafana.
- [x] Setup Prometheus and Grafana, on VM and in Docker environment. [Refer:](https://signoz.io/guides/how-to-install-prometheus-and-grafana-on-docker/)
- [ ] Dynamically Update the Prometheus configuration file.
    - [ ] Create a GENSERVER which search for the HUB and API in the registry logs and accordingly update the target files of HUB and API for Prometheus.
- [x] Callback Log file Preprocessing and CSV creation according to the format given.
- [x] Scrape from the file and then: 
    - [x] for each day (1 feb 2025) convert it to a folder of date and create CSV's in it of respective 10 lakhs of rows.
- [ ] Analysis of Monitoring Requirement by Routing Team
    - [ ] https://onextel.atlassian.net/browse/AURA-1292
- [x] Analysis of Monitoring Requirement by Client facing team
    - [x] https://onextel.atlassian.net/browse/AURA-1328
- [x] Automate the Prometheus and Grafana in Docker on VM
    - [x] https://onextel.atlassian.net/browse/AURA-2418
- [x] Find a way to show `error_code` for all `tucid` and `pid` 
    - [x] `{__name__="error_code_dlrvd", error_code="000", gwid="201", instance="10.20.3.19:21748", job="test-hub1", pid="1051", tucid="2000"}`
- [ ] Setup the Fluent Bit on the SBI server. 
    - [x] Setup Fluent Bit on local. 
    - [x] Setup Fluent Bit on VM.
    - [ ] Setup Fluent Bit on SBI-UAT server (production).
- [ ] 
# Problems: 
- [ ] The Prometheus metrics are exposed only locally on 1 VM (IT WAS NOT IN THE REPO). That is the reason the why the new HUB's were created and were giving error in Prometheus.
      (Since earlier it was expected to be on one VM only)
- [ ] The error based metrics are added to the HUB's code just now by Sanad.
- [ ] Creating a gen_server to overwrite the configuration file.
- [ ] **rate() & increase() function in PromQL use interpolation internally.**


## Doubts Regarding Fluent Bit
1. The NGINX server does not have the docker installed in it.
2. Are the ports **2020-fluent bit**, **9090-prometheus** & **3000-grafana** free ? 
3. Will the nginx logs be fetched from `sbiuatapi.onex-aura.com.log` file or there are some other files ? like `sbiuatapi.onex-aura.com.log.1`

## Changes to be introduced when on production
- [ ] **`log-paths.yml`**
- change the path variable according to `server-logs` location.
- For api and hub: 

```yml
env:
  DLR_LOG_PATH = /home/onexteladmin/onextel/api/dlr_logger/DlrSend_*.log
  DLVR_ERROR_CODE_LOG_PATH = /tmp/*_dlvr_error_code.log
```

- For nginx:

```yml
env:
  NGINX_LOG_PATH: /var/log/nginx
```


- [ ] **`fluent-bit.yml`**
- change the paths: where just have to change `onexadmin` -> `onexteladmin`. (For SBI UAT)
- For api and hub, there are 4 occurrences of `onexadmin`.
```yml
includes:
  - /home/onexteladmin/onextel/fluent-bit_api_hub/config/log-paths.yml

env:
  FLUSH_INTERVAL: 15
  LOG_LEVEL: info
  PROMETHEUS_HOST: 0.0.0.0
  PROMETHEUS_PORT: 2020
  REFRESH_INTERVAL: 10
  IGNORE_OLDER: 1d
  METRICS_FLUSH_INTERVAL: 15

service:
  flush: ${FLUSH_INTERVAL}
  log_level: ${LOG_LEVEL}
  parsers_file: /home/onexteladmin/onextel/fluent-bit_api_hub/config/parsers.conf

pipeline:
  inputs:
    - name: tail
      path: ${DLR_LOG_PATH}
      tag: dlr_logs
      parser: json
      refresh_interval: ${REFRESH_INTERVAL}
      ignore_older: ${IGNORE_OLDER}

    - name: tail
      path: ${DLVR_ERROR_CODE_LOG_PATH}
      tag: dlvr_error_code_logs
      refresh_interval: ${REFRESH_INTERVAL}
      parser: dlvr_error
      ignore_older: ${IGNORE_OLDER}

  filters:
    - name: lua
      match: dlr_logs
      script: /home/onexteladmin/onextel/fluent-bit_api_hub/lua/process_dlr.lua
      call: process_dlr

    - name: lua
      match: dlvr_error_code_logs
      script: /home/onexteladmin/onextel/fluent-bit_api_hub/lua/extract_dlvr_error_code.lua
      call: extract_dlvr_error_code
```

- For nginx, there are 4 occurences of `onexadmin`.

```yml
includes:
  - /home/onexteladmin/onextel/fluent-bit_nginx/config/log-paths.yml

env:
  FLUSH_INTERVAL: 15
  LOG_LEVEL: info
  PROMETHEUS_HOST: 0.0.0.0
  PROMETHEUS_PORT: 2020
  REFRESH_INTERVAL: 10
  IGNORE_OLDER: 1d
  METRICS_FLUSH_INTERVAL: 15

service:
  flush: ${FLUSH_INTERVAL}
  log_level: ${LOG_LEVEL}
  parsers_file: /home/onexteladmin/onextel/fluent-bit_nginx/config/parsers.conf

pipeline:
  inputs:
    - name: tail
      path: ${NGINX_LOG_PATH}
      tag: nginx_logs
      path_key: server_name
      refresh_interval: ${REFRESH_INTERVAL}
      parser: nginx
      ignore_older: ${IGNORE_OLDER}

  filters:
    - name: lua
      match: nginx_logs
      script: /home/onexteladmin/onextel/fluent-bit_nginx/lua/filter_invalid_record.lua
      call: filterinvalid_record

    - name: lua
      match: nginx_logs
      script: /home/onexteladmin/onextel/fluent-bit_nginx/lua/extract_key.lua
      call: extract_key
```

- [ ] Edit the unit file of the system service to run the fluent-bit.yml file created by us.


