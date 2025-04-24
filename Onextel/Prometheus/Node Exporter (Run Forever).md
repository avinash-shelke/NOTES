#### Install and setup Node Exporter

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

#### Run the Node Exporter persistently
1. To run the **Node Exporter** persistently, 

```bash
nohup ./node_exporter --web.listen-address=":25000" > /dev/null 2>&1 &
```

2. Check for the running process: 

```bash
ps aux | grep node_exporter
```

1. Stop the Node Exporter if needed: 

```bash
pkill -f node_exporter
```
