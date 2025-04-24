# Start Node exporter as a Systemd service

1. Create a new user to run the service:

```bash
sudo adduser node_exporter
```

1. Download and Install Node Exporter

```bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.9.0/node_exporter-1.9.0.linux-amd64.tar.gz
```

1. Extract the downloaded file: Unpack the tar archive to extract node_exporter binaries:

```bash
tar -xvzf node_exporter-1.9.0.linux-amd64.tar.gz
```

1. Rename the extracted folder to the `node_exporter` 

```bash
sudo mv node_exporter-1.9.0.linux-amd64 node_exporter
```

1. Change folder permissions for `node_exporter` user with:

```bash
sudo chown node_exporter:node_exporter /home/onexadmin/node_exporter/node_exporter

```

1. Create systemd service in `/etc/systemd/system/node_exporter.service` with the following contents:

2. Open the file: 

```bash
sudo nano /etc/systemd/system/node_exporter.service
```

1. Paste the Content below in the file `node_exporter.service`:

```bash
[Unit]
Description=Node Exporter

[Service]
User=node_exporter
ExecStart=node_exporter/node_exporter --web.listen-address=":25000" --collector.cpu.info --collector.meminfo --collector.diskstats --collector.netdev

[Install]
WantedBy=default.target
```

1. Start and Enable the Service
```bash
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
```

1. Verify the Service
```bash
sudo systemctl status node_exporter
```

1. Configure Prometheus

Edit **/home/onexadmin/prometheus_grafana_docker/prometheus.yml** on VM: **10.20.3.76** for **Perf-testing** and add:

```bash
scrape_configs: 
  - job_name: 'node' 
    scrape_interval: 5s 
    static_configs: 
      - targets: ['your_server_ip:25000']
```

1. Restart Prometheus
```bash
sudo systemctl restart prometheus
```

