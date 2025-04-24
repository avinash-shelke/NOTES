#prometheus 

#### Install and Run Prometheus on Linux as a system service 
1. Create a dedicated `prometheus` user with:

```bash
sudo useradd -M -U prometheus
```

2. Run the following command to download the latest Prometheus tar file for Linux. (For other OS, refer to the [Prometheus download page](https://prometheus.io/download/).)

```bash
wget https://github.com/prometheus/prometheus/releases/download/v3.2.0-rc.1/prometheus-3.2.0-rc.1.linux-amd64.tar.gz
```

3. Extract the downloaded file: Unpack the tar archive to extract Prometheus binaries:

```bash
tar -xvf prometheus-3.2.0-rc.1.linux-amd64.tar.gz
```

4. Move the extracted folder to the `/opt/prometheus` 

```bash
sudo mv prometheus-3.2.0-rc.1.linux-amd64 /opt/prometheus
```

5. Change folder permissions for `prometheus` user with:

```bash
sudo chown prometheus:prometheus -R /opt/prometheus
```

6. Create systemd service in `/etc/systemd/system/prometheus.service` with the following contents:

7. Open the file: 

```bash
sudo nano /etc/systemd/system/prometheus.service
```

8. Paste the Content below in the file `prometheus.service`:

```bash
[Unit]
Description=Prometheus Server
Documentation=https://prometheus.io/docs/introduction/overview/
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Restart=on-failure
ExecStart=/opt/prometheus/prometheus \
  --config.file=/opt/prometheus/prometheus.yml \
  --storage.tsdb.path=/opt/prometheus/data \
  --storage.tsdb.retention.time=30d

[Install]
WantedBy=multi-user.target
```

9. Start systemd service of Prometheus with:

```bash
sudo systemctl daemon-reload
sudo systemctl start prometheus.service
```

10. Enable service to start and system start-up:

```bash
sudo systemctl enable prometheus.service
```

11. Check the status of the service with:

```bash
sudo systemctl status prometheus.service
```

12. To view the logs of Prometheus for troubleshooting, type:

```bash
sudo journalctl -u prometheus.service -f
```


#### Uninstall Prometheus 
1.  Stop the Prometheus Service

Before uninstalling Prometheus, ensure that the service is stopped.

```bash
sudo systemctl stop prometheus
```

2.  Remove Prometheus User and Group

Prometheus typically runs under its own user and group. To remove them:

```bash
sudo userdel -r prometheus
sudo groupdel prometheus
```

3.  Uninstall Prometheus

If you installed Prometheus using a package manager like apt, you can uninstall it using:

```bash
sudo apt-get purge prometheus
```

4.  Remove Configuration and Data Directories

Delete the Prometheus configuration and data directories to ensure all related files are removed.

```bash
sudo rm -rf /etc/prometheus/
sudo rm -rf /var/lib/prometheus/
```

5.  Remove Prometheus Service File

If you’ve set up Prometheus as a service, remove its service file:

```bash
sudo rm /etc/systemd/system/prometheus.service
```

6.  Reload Systemd

After removing the service file, reload the systemd manager configuration:

```bash
sudo systemctl daemon-reload
```

## Commands Mentioned

- sudo systemctl stop prometheus – Stops the Prometheus service.
- sudo userdel -r prometheus – Deletes the Prometheus user.
- sudo groupdel prometheus – Deletes the Prometheus group.
- sudo apt-get purge prometheus – Uninstalls Prometheus.
- sudo rm -rf /etc/prometheus/ – Removes Prometheus configuration directory.
- sudo rm -rf /var/lib/prometheus/ – Removes Prometheus data directory.
- sudo rm /etc/systemd/system/prometheus.service – Removes Prometheus service file.
- sudo systemctl daemon-reload – Reloads the systemd manager configuration.