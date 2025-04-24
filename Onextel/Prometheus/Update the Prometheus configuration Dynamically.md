
# Identify the methods to dynamically update the prometheus configuration file

Methods to dynamically update the Prometheus configuration file:

| No. | Method                                                          | Best For                                         | Requires Restart? | Ease of Automation | Scalability |
| --- | --------------------------------------------------------------- | ------------------------------------------------ | ----------------- | ------------------ | ----------- |
| 1   | **File-based Service Discovery (file_sd_configs)**              | **Dynamic target updates**                       | **No**            | **High**           | **High**    |
| 2   | Configuration Management Tools (Ansible, Terraform, Kubernetes) | Infrastructure as Code (IaC)                     | Yes               | Moderate           | High        |
| 3   | Prometheus HTTP API                                             | Checking existing targets (not modifying config) | No                | High               | High        |
| 4   | Modifying prometheus.yml manually + restart                     | Simple setups with few changes                   | Yes               | Low                | Low         |
| 5   | Kubernetes Service Discovery (if using Kubernetes)              | Dynamic Kubernetes service discovery             | No                | High               | Very High   |
**Best Approach:** 
*File-Based Service Discovery (`file_sd_configs`)*
- This avoids restarting Prometheus and allows changes via a simple JSON or YAML file.

---

# Implementation of the File-Based Service Discovery Method

To dynamically update the Prometheus configuration file using file-based service discovery, follow these steps:

#### 1. Configure Prometheus to Use File-Based Service Discovery

Modify the Prometheus configuration file (`prometheus.yml`) to include the `file_sd_config` section:

```yaml
scrape_configs: 
  - job_name: 'dynamic-targets-api'
    file_sd_configs:
      - files:
        - '/opt/prometheus/api/*.yaml'
        refresh_interval: 10s

  - job_name: 'dynamic-targets-hub'
      file_sd_configs:
      - files:
        - '/opt/prometheus/hub/*.yaml'
        refresh_interval: 10s
```

#### 2. Create or Update Target Files

The target files (`targets.yml`) should contain the list of target groups.
1. Create a file `api.yaml` in the folder `/opt/prometheus/api` and its content will be

```yaml
- targets:
    - "10.20.3.63:9100"
  labels:
    type: "api"
    name: "api1"
    #porter_id: "1001"

- targets:
    - "10.20.3.63:9101"
  labels:
    type: "api"
    name: "api2"
    #porter_id: "1002"
```

1. Create a file `hub.yaml` in the folder `/opt/prometheus/hub` and its content will be

```yaml
- targets:
    - "10.20.3.19:9106"
  labels:
    type: "hub"
    name: "hub1"
    #porter_id: ""

- targets:
    - "10.20.3.19:9107"
  labels:
    type: "hub"
    name: "hub2"
    #porter_id: ""
```
 
#### 3. Enable Dynamic Updates

- Prometheus watches for changes in the specified files (`targets.json`, `targets.yml`).
- Whenever the file is updated, Prometheus automatically reloads the new targets **without needing a restart**.
- If you are using atomic renaming (replacing files using `mv`), ensure that the parent directory is watched.

#### 4. Automate Updates to Target Files
[[Automate Updates to the Target files]]
#### 5. Verify Prometheus Configuration

After updating the target files:

- Check the Prometheus service discovery page:  
    👉 `http://<prometheus-host>:9090/service-discovery`
- Look for the `__meta_filepath` label to confirm the file source.
