#prometheus 
# Hub
---
1. **queued** → Helps to calculate the count of messages flowing into the hub and queued to the input queue.  
2. **queued_out** → Helps to calculate the count of messages taken out from the input queue.  
3. **submitted** → Helps to calculate the count of messages submitted to the operator.  
4. **acked** → Helps to calculate the count of messages acknowledged by the operator.  
5. **dlvrd** → Helps to calculate the count of DLR for messages from the operator. 
6. **dlvrd_acked** → Helps to calculate the count of DLR acknowledgment sent to the operator.  
7. **db_queued** → Helps to calculate the count of queued messages written to the database.  queued_out{instance="$INSTANCE"}
8. **db_submit** → Helps to calculate the count of acknowledged messages written to the database.  
9. **db_dlvrd** → Helps to calculate the count of DLR messages written to the database.  

---

# API
---
1. **hits**, `labels: [type, name, method]` → Helps to calculate hit counts.  
   **Examples:**  
   - `hits -> [total, undefined, post]`  
   - `hits -> [endpoint, Endpoint, post]`  
   - `hits -> [apikey, Apikey, get]`  

2. **msg_queued**, `labels: [type, name]` → Helps to calculate the queued message count.  
   **Examples:**  
   - `msg_queued -> [total, undefined]`  
   - `msg_queued -> [apikey, ApiKey]`  

3. **parts_queued**, `labels: [type, name]` → Helps to calculate the queued message parts count.  
   **Examples:**  porter_id
   - `parts_queued -> [total, undefined]`  
   - `parts_queued -> [apikey, ApiKey]`  

4. **submit**, `labels: [type, name]` → Helps to calculate the message submitted count.  
   **Examples:**  
   - `submit -> [total, undefined]`  
   - `submit -> [apikey, ApiKey]`  
   - `submit -> [porter_id, PorterId]`  

   **Note:** There are multiple `Apikey`, `Endpoint`, and `PorterId`.

---

# DLR Sender
---
1. **dlr_queued**, `labels: [type, name]` → Helps to calculate the count of DLR messages queued in `dlrsender`.  
   **Examples:**  
   - `dlr_queued -> [total, undefined]`  
   - `dlr_queued -> [apikey, ApiKey]`  

2. **dlr_callback**, `labels: [type, name]` → Helps to calculate the count of callback messages sent.  
   **Examples:**  
   - `dlr_callback -> [total, undefined]`  
   - `dlr_callback -> [apikey, ApiKey]`  

   **Note:** There are multiple `Apikey`.

---

# SMSC
---
1. **incoming**, `labels: [type, name]` → Helps to calculate the count of incoming messages to SMSC.  
   **Examples:**  
   - `incoming -> [total, undefined]`  
   - `incoming -> [smpp, SmppId]`  

2. **queued**, `labels: [type, name]` → Helps to calculate the count of queued messages.  
   **Examples:**  
   - `queued -> [total, undefined]`  
   - `queued -> [smpp, SmppId]`  

3. **dlr_queued**, `labels: [type, name]` → Helps to calculate the count of DLR queued messages to SMSC.  
   **Examples:**  
   - `dlr_queued -> [total, undefined]`  
   - `dlr_queued -> [smpp, SmppId]`  

4. **dlr_send**, `labels: [type, name]` → Helps to calculate the count of DLR messages sent.  
   **Examples:**  
   - `dlr_send -> [total, undefined]`  
   - `dlr_send -> [smpp, SmppId]`  

5. **dlr_acked**, `labels: [type, name]` → Helps to calculate the count of DLR acknowledgment messages sent back to SMPPs.  
   **Examples:**  
   - `dlr_acked -> [total, undefined]`  
   - `dlr_acked -> [smpp, SmppId]`  

6. **smpp_submitted**, `labels: [type, name]` → Helps to calculate the count of DLR messages submitted to the porter.  
   **Examples:**  
   - `submitted -> [total, undefined]`  
   - `submitted -> [porter, PorterId]`  
   - `submitted -> [smpp, SmppId]`  

   **Note:** There are multiple `SmppId`, `PorterId`.

---

# Recon
---
1. **queued**, `label: [type]` → Helps to calculate the count of messages queued.  
   **Examples:**  
   - `queued -> [retry]`  
   - `queued -> [move]`  

2. **submit**, `label: [type]` → Helps to calculate the count of messages submitted.  
   **Examples:**  
   - `submit -> [retry]`  
   - `submit -> [move]`  
