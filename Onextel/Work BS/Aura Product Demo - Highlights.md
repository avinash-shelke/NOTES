
## Prerequisites:  
SMPP :
SMPPC: 
DLT/TREI : 

## What we do with the Aura Platform ? 

SuperAdmin(Onextel) --> Tenant1, Tenant2, Tenant3 

Tenant1 -> UC1, UC2(client that are using our accounts)
(for the partners and other clients)

TUC and Child TUC are just he same 
TUC -> child TUC -> sub-child TUC 

## SuperAdmin 

Platform{1} -- so number 1 represents the super admin account 
> idk the reason to show the number in there ? visually it is wrong right ? 

Credits - the total credits to distribute to the UC
UC - have the rights to send messages so it needs credit 
it will show the dashboard of all of the accounts (sub hierarchy)

Masking the data : XXXX8987 its something like this 
> What all of the content is masked in the masking ? 

Show latency : report where it has the things, so at what time it has got there 
> What does `Update manual delivery` do ? 

3 attempts otherwise the account will be blocked 
user unblock it is still there 

- User Management : to create the tenants and user in here 
- Platform user : list of everyone expect the suPatnerper admin 
- Super admin use : will have the account of the super admin 
- Master Credits : to add the credits to super admin
- Credits : to distribute the tenants 
- Master License : to change the license used 
- Config : blacklisting a create a number (white list is still in progress) ==available at all of the levels== 
- Spam : Content has some keyword in it send it to spam
	- create category
	- degree : ex: 2 of the keywords are getting matched 
	- strict match : so its equivalent to degree 1 
- Notification Tab : to send to what Tenant or the UC account 
- Reporting Tabs : 
- Routing : 
- Analytics : 
- Options : vendor circle courier and types 
- API Keys : 
> How does the credit work in here ? how are the earned as a super admin ?
## TUC User 
	
- OTP Charges : On Submission - On Delivery 
- Billing paid : Post paid and pre paid 
- setting 
	- 2FA 
	- allow user profile picture 
	- filter spam 
	- daily credit limit 
	- Search 
		- sender ID 
		- user ID 
	- HUB : used to config the gateways 
		- career and career circle 
	- TPS transaction per sec 

> what is bind ? 
> what is auto bind , supports flash
> what is the bind type ?  account is binded and it is used 
> what is telco reports ? 
> what is the need of web Url ? 
> what is encoding type ? 


## Types of Messages 

- Quick english panel : sender ID required 
	- the recipients only 10,000 
	- if you want to add more then u can use other groups 
	- You can create books **phonebooks** 
	- Insert Templates 
		- Promo 
		- Service Implict 
		- Service Explict 
	- Insert URL 
		- you can get the location  
	- Scrub DND 
		- any number that is discarded will be DND 

> [!danger] Hazard
> the feature get location idk it should be allowed right 

- Unicode panel 
	- same as english just the thing here is that we have multi lingual support in here 
- Campaign sms 
	- can upload a file 
	- no restriction of 10,000 message 

> [!warn] Features
> Dynamic messages : replace the message for different use 
> Multiple Dynamic 

- Report 
- Campaign Summary : the summary i.e. campaign wise 
- Telco reports : 
	- TUC summary 
	- Partner Summary : same record but under summary type
- Analytics 
	- DLT Rejected count 
	- Error count 
















