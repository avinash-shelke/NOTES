#prometheus 

### Official [Prometheus download guide](https://prometheus.io/docs/prometheus/latest/getting_started/)

#### Install and Run Prometheus on Linux ()
1. Run the following command to download the latest Prometheus tar file for Linux. (For other OS, refer to the [Prometheus download page](https://prometheus.io/download/).)

```bash
wget https://github.com/prometheus/prometheus/releases/download/v3.2.0-rc.1/prometheus-3.2.0-rc.1.linux-amd64.tar.gz
```

2. Extract the downloaded file: Unpack the tar archive to extract Prometheus binaries:

```bash
tar -xvf prometheus-3.2.0-rc.1.linux-amd64.tar.gz
```

3. Move into the untarred folder: 

```bash
cd prometheus-3.2.0-rc.1.linux-amd64/
```

4. Verify Prometheus installation:

```bash
./prometheus --version
```

5. Start the Prometheus on the local with default configuration: 

```bash
./prometheus --config.file=prometheus.yml
```

6. Access the Prometheus UI: Once started, Prometheus runs on port **9090** by default. Open a browser and go to:

```
http://localhost:9090
```

7. Verify Prometheus Targets: Navigate to **`http://localhost:9090/targets`** to check the active targets and their status.

#### Additional Enhancements:
8. Run Prometheus in the background: 

```bash
nohup ./prometheus --config.file=prometheus.yml > prometheus.log 2>&1 &
```
This allows Prometheus to keep running even after the terminal is closed.

9. **[Enable Prometheus as a system service:](https://janakiev.com/blog/prometheus-setup-systemd/)**
	If we want to run Prometheus as a background service, we can create a **systemd** service for it.
		Refer this: [[Install Prometheus as a Systemd Service on VM]]
	