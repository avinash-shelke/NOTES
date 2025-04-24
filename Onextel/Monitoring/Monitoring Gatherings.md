
| Data  Available & Possible                                                                                                                                                                                                                                                      | Data Available & Not Possible | Data Not Availlable                                                   | Dont KNOW |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------- | --------------------------------------------------------------------- | --------- |
| 1. Total Traffic : Submitted / Delivered / Failed for each hour of selected date                                                                                                                                                                                                |                               |                                                                       |           |
|                                                                                                                                                                                                                                                                                 |                               | 2. API Uptime : All our endpoints                                     |           |
|                                                                                                                                                                                                                                                                                 |                               | 3. API Latency                                                        |           |
|                                                                                                                                                                                                                                                                                 |                               | 4. Pending Callback count                                             |           |
| 5. Comparison graph of Submitted / Delivered / Failed with comparison type button :<br>1. Daily : Last 7 days including today<br>2. Weekly : Choose weekday ( Last 7 weeks for that particular weekday including current day )<br>3. Monthly : (Last 7 months including current |                               |                                                                       |           |
| 6. Delivery percentage against submitted (**HUB: dlvrd, submitted**)                                                                                                                                                                                                            |                               |                                                                       |           |
|                                                                                                                                                                                                                                                                                 |                               | 7. Highest to lowest Error code summary                               |           |
|                                                                                                                                                                                                                                                                                 |                               | 8. Latency for only OTP traffic : 0-5, 5-10, 10-20, 20-30, 30-60, 60+ |           |
|                                                                                                                                                                                                                                                                                 |                               | 9. NACK failure                                                       |           |
|                                                                                                                                                                                                                                                                                 |                               | 10. Download above data widgets data in excel/pdf option              |           |

# Filters

Without a specific Filter it should show overall data or data with other filters.


| Data Available                                                                                                                                                                | Data Not Available                  | Dont Know |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------- | --------- |
| 1.  TUC ID                                                                                                                                                                    | 1. TUC Name                         |           |
| 2. API-key                                                                                                                                                                    | 2. Sender Id, Template Id           |           |
|                                                                                                                                                                               | 3. Web /API                         |           |
|                                                                                                                                                                               | 4. Type file for OTP, SI, SE, Promo |           |
| 5. Error code / description                                                                                                                                                   |                                     |           |
| 6. Time Filter<br>-  30 min<br>-  1 hr<br>-  3 hr<br>-  6 hr<br>-  This day<br>-  Yesterday<br>-  Last 3 days<br>-  Last 7 days<br>-  This month<br>-  Custom : date and time |                                     |           |
# Roles

| Data Available                                            | POSSIBLE ROLE  | ISSUE                                          |
| --------------------------------------------------------- | -------------- | ---------------------------------------------- |
| 1. Super admin : can see all and edit accounts/dashboards | admin / editor |                                                |
| 2. Admin : can see all accounts<br>                       | viewer         |                                                |
| 3. Manager : can see their team and his own accounts<br>  | viewer         | viewing according to the team is not there     |
| 4. AM : can see only their accounts                       | viewer         | viewing according to the accounts is not there |

# Alerting

| Data Available                                                      | Data Not Available | Dont Know                                                                                                      |
| ------------------------------------------------------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------- |
|                                                                     |                    | 1. DLT error grouping should be done so that email can be automated to client once In a day for each DLT error |
|                                                                     |                    | 2. Frequency                                                                                                   |
| 3. Selected Smpp error codes should be sent to SMPP team            |                    |                                                                                                                |
| 4. Overall delivery and failure alerting as per set percentage      |                    |                                                                                                                |
| 5. Delivery percentage based alerting account wise to few email ids |                    |                                                                                                                |
| 6. Failure percentage based alerting account wise to few email ids  |                    |                                                                                                                |
|                                                                     |                    | 7. Option to set delivery percentage account wise, template id wise, sender id wise.                           |
|                                                                     |                    | 8. New error code identified in system alert to SMPP team                                                      |















