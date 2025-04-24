
If Grafana is installed and running in the VM and if we try to install the grafana on docker using image then while accesssing the port it give failed to bind the port error.

![[Pasted image 20250219113029.png]]

---
>[!IMPORTANT]
>WHY PROMETHEUS GIVE THE FLOATING VALUES:
>https://stackoverflow.com/questions/70798035/increase-vs-changes-function-for-counters
>The `changes()` function in Prometheus can be used instead of `increase()` function if you are sure that the counter stays the same or is incremented by 1 between scrapes. If the counter is incremented by more than 1, then `changes()` will return lower results than `increase()`.
>The `increase()` function in Prometheus may return fractional results for integers counters because of interpolation. See more details [here](https://github.com/VictoriaMetrics/VictoriaMetrics/issues/1215#issuecomment-850305711).
>Note also that both `changes(m[d])` and `increase(m[d])` in Prometheus may miss the difference between the last samples just before the lookbehind window `d` and the first point at the window. Both issues mentioned above are resolved in [MetricsQL](https://docs.victoriametrics.com/MetricsQL.html) though. (I'm the author of MetricsQL).



