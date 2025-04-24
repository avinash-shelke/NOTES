#grafana

[[Grafana Intro]]
[[Production Dashboards Analysis]]
[[Fluent Bit]]
[[Install Grafana as a Systemd Service on VM]]
[[Install Prometheus & Grafana in Docker]]


>[!IMPORTANT]
>To implement the **ALL** option in Grafana Dashboard we must have to change the Query, add (:pipe) in the particular metric. 
>Ex.
>`hits{instance="${INSTANCE:pipe}", name=~"${APIKEY:pipe}"} `            

