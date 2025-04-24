```python
sum by (porter_id) (log_metric_counter_total_dlvr_error_code{code!="000"}) * 100 / sum by (porter_id) (log_metric_counter_total_dlvr_error_code)
```
