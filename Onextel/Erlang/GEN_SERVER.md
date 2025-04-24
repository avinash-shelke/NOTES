
### Registry Cache:


**API Requirements**: 
```yaml
- targets:
    - "10.20.3.92:8888"
  labels:
    type: "api"
    status: "ready"

- targets:
    - "10.20.3.92:8889"
  labels:
    type: "api"
    status: "ready"
```

```yaml
- targets:
    - "10.20.3.92:21000"
  labels:
    type: "hub"
    bind_status: "true"
    gateway_id: 201
    smppc_id: 1002
    telemarid: "111111"

- targets:
    - "10.20.3.92:21001"
  labels:
    type: "hub"
    bind_status: "true"
    gateway_id: 201
    smppc_id: 1002
    telemarid: "111111"
```
