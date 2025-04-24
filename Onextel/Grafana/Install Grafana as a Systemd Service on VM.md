#grafana

#### Install on Linux as a system service 
Steps to install Grafana from the APT repository:

1. Install the prerequisite packages:

```bash
sudo apt-get install -y apt-transport-https software-properties-common wget
```

2.  Import the GPG key:

```bash
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
```

3. To add a repository for stable releases, run the following command:

```bash
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```

4. Run the following command to update the list of available packages:

```bash
sudo apt-get update
```

5. To install Grafana Enterprise, run the following command:

```bash
sudo apt-get install grafana-enterprise
```

6. To install Grafana OSS, run the following command:

```bash
sudo apt-get install grafana
```

#### Start Grafana Server on Linux as a system service: 
1. To start the service: 

```bash
sudo systemctl daemon-reload
sudo systemctl start grafana-server
```

2. To verify that service is running: 

```bash
sudo systemctl status grafana-server
```

3. To configure the Grafana server to start at boot

```bash
sudo systemctl enable grafana-server.service
```

##### Additional: Serve Grafana on a port < 1024
1. If you are using `systemd` and want to start Grafana on a port that is lower than 1024, you must add a `systemd` unit override.

```bash
# Alternatively, create a file in /etc/systemd/system/grafana-server.service.d/override.conf
sudo systemctl edit grafana-server.service
```

2. Add the following additional settings to grant the `CAP_NET_BIND_SERVICE` capability.

```ini
[Service]
# Give the CAP_NET_BIND_SERVICE capability
CapabilityBoundingSet=CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_BIND_SERVICE

# A private user cannot have process capabilities on the host's user
# namespace and thus CAP_NET_BIND_SERVICE has no effect.
PrivateUsers=false
```

3. Restart the Grafana server using systemd 

```bash
sudo systemctl restart grafana-server
```

#### Uninstall Grafana on Linux System: 
Steps to uninstall Grafana: 

1. If configured Grafana to run with systemd, stop the systemd service for Grafana server: 

```bash
sudo systemctl stop grafana-server
```

2. If you configured Grafana to run with init.d, stop the init.d service for Grafana server:
```shell
sudo service grafana-server stop
```

3. To uninstall Grafana OSS:

```shell
sudo apt-get remove grafana
```

4. To uninstall Grafana Enterprise:

```shell
sudo apt-get remove grafana-enterprise
```

5. Optional: To remove the Grafana repository:
  
```bash
sudo rm -i /etc/apt/sources.list.d/grafana.list
```
