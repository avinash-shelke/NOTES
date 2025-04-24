#prometheus 
#grafana

[Refer document:](https://signoz.io/guides/how-to-install-prometheus-and-grafana-on-docker/)
```table-of-contents
title: 
style: nestedList # TOC style (nestedList|nestedOrderedList|inlineFirstLevel)
minLevel: 0 # Include headings from the specified level
maxLevel: 0 # Include headings up to the specified level
includeLinks: true # Make headings clickable
hideWhenEmpty: false # Hide TOC if no headings are found
debugInConsole: false # Print debug info in Obsidian console
```
## Step-by-Step Guide to Install Prometheus on Docker

 > [!IMPORTANT]
Before you begin, prerequisites:
> - Docker and Docker Compose installed on VM. If not installed [refer]([https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/) ).

1. Create a Docker network for Prometheus and Grafana:

```bash
docker network create monitoring
```

2. Create a Prometheus configuration file named `prometheus.yml`:

```yaml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
```

3. Create a Docker Compose file named `docker-compose.yml`:

```yaml
version: '3'
services:
  prometheus:
    image: prom/prometheus
    ports:
      - 9090:9090
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
    networks:
      - monitoring

networks:
  monitoring:
    external: true
```

4. Run Prometheus:

```bash
sudo docker compose up -d
```

5. Verify the Prometheus container is running:

```bash
sudo docker ps
```

You should see the Prometheus container listed and running.

### Configuring Prometheus for Metric Collection

To collect metrics from your applications:

6. Add scrape configurations to `prometheus.yml`:

```yaml
scrape_configs:
  - job_name: 'my-app'
    static_configs:
      - targets: ['app-host:app-port']
```

Adjust scrape intervals and timeout settings as needed.

7. Restart the Prometheus container to apply changes:

```bash
docker compose restart prometheus
```

1. Access the Prometheus UI at `http://localhost:9090` to verify metric collection.

---

## Step-by-Step Guide to Install Grafana on Docker

1. Update the `docker-compose.yml` file to include Grafana:

```yaml
version: '3'
services:
  prometheus:
    # ... (previous Prometheus configuration)

  grafana:
    image: grafana/grafana
    ports:
      - 3000:3000
    environment:
      - GF_SECURITY_ADMIN_PASSWORD=your_password
    networks:
      - monitoring

networks:
  monitoring:
    external: true
```

2. Run the updated Docker Compose configuration:

```bash
docker compose up -d
```

3. Access the Grafana web interface at `http://localhost:3000`.

---

## Connecting Grafana to Prometheus

To visualize Prometheus data in Grafana:

1. Log in to Grafana (i.e. `http://host_ip:3000`) (default username: admin, password: your_password).
2. Go to Configuration > Data Sources.
3. Click "Add data source" and select Prometheus.
4. Set the URL to `http://prometheus:9090`.
5. Click "Save & Test" to verify the connection.

---

## Monitoring Your Docker Environment

To monitor your Docker environment:

1. Add cAdvisor to your `docker-compose.yml`:

```yaml
cadvisor:
  image: gcr.io/cadvisor/cadvisor
  ports:
    - 8080:8080
  volumes:
    - /:/rootfs:ro
    - /var/run:/var/run:ro
    - /sys:/sys:ro
    - /var/lib/docker/:/var/lib/docker:ro
    - /var/run/docker.sock:/var/run/docker.sock:ro # Add only if you have your containers running on Mac
  networks:
    - monitoring

```

2. Update Prometheus configuration to scrape cAdvisor metrics:

```yaml
scrape_configs:
  - job_name: 'cadvisor'
    static_configs:
      - targets: ['cadvisor:8080']

```

3. Restart your containers:

```bash
docker-compose up -d

```

1. Create a Docker-specific dashboard in Grafana using cAdvisor metrics.

---
## Adding a new Endpoint in Prometheus for Scraping
Steps to add a new endpoint in Prometheus and Visualize it in Grafana:

1. Log into the VM in which Prometheus is installed and running in Docker environment.

2. Add the endpoint in scrape configs in `prometheus.yml` file

	![[Pasted image 20250225115817.png]]

3. Restart the Prometheus container to apply changes:

```bash
docker compose restart prometheus
```

4. If docker container is not up, run the following: 

```bash
sudo docker compose up -d
```

5.  Access the Prometheus UI at `http://localhost:9090` to verify metric collection.

![[Pasted image 20250225120435.png]]

---
