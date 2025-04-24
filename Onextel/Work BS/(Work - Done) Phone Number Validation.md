>[!faq] Pre-requisites 
>Repo : rnd-main 
>Pkg : validatenumbers-perf
>Technology: Java, JDK , Maven
> 

#java
[[{Work - Inprogress} Dynamic Validation]]
## Objectives : 
1) Download the repo 
2) Setup java accordingly 
3) Locate the file 
4) Run the file 
	1) Check if the bin is created 
	2) Check if the txt is working as well 
5) Objective 1:
	1) Print the output  ==json format ==
	2) Check the required number of thing that are required 
			1) `{invalid_number, duplicate_numbers: duplicatecount, dnd_numbers: dndcount, valid_numbers, total_numbers : total numbers}`
6) Objective 2: 
	1) The output should have ==UUID== 
		1) Know about this to add the UUID properly
	2) Give the path for the file to save in the java directory 
7) Objective 3: 
	1) To note the time requi


		1) Before hand | After hand time 

Additional things : 
- Try to make the code faster
- Blacklisted Numbers 


### Paths : 
- phoneNumberFilePath
- dndBitMapFilePath
### Methods :

- DNDListManager 
- PhoneNumberListValidator(dndManager)
	- Validate Single (phoneNu)

>[!faq] Doubts
> Q) what is the difference between valid number and valid format number ? 
> Q) how fast do you want it to perform ? 

all message leaving invalid --> use this 

Output : 
```text
Total Time: 0.0 seconds.
Total Time: 0.073 seconds.
Load Bin Time: 0.025 seconds.
Validation Time Single: 0.048 seconds.
Text Output:
Total Numbers: 100000
Invalid Format Numbers: 0
Valid Format Numbers: 100000
DND Count: 99973
Duplicate Count: 27
Actual Count (valid format - DND - duplicate): 27
```

JSON Format: 

```json
{
    "validation_result": {
        "invalid_format_numbers": 0,
        "duplicate_count": 27,
        "total_numbers": 100000,
        "dnd_count": 99973,
        "actual_count": 27,
        "valid_format_numbers": 100000
    },
    "total_time": "0.071seconds.",
    "load_bin_time": "0.023seconds. ",
    "validation_time_single": "0.047seconds.",
    "initial_load_time": 0.085
}
```



## New Objectives 

- `<UUID>,Phone number` 
	- make the UUID 26digit -> alpha numeric 
- validate number in the output generated file 
- check the logic for the msg in there valid count ( 10 - 3( 1 dnd + 1 duplicate + 1 invalid ))
- input file name (the one to be validated ) , bin path  , output path

### Milestones 
- First Fix the format -- DONE
- Make the random digit 27 digit but alpha numeric with caps and non caps too -- DONE
- check the logic for the valid count  -- DONE
	- here go through the valid number  --DONE
- output should have only the valid number -- DONE
- Input file name should have path only -- DONE


### Info

> [!Faq] UUID : Universal Unique Identifier 
>
> 128 bit value i.e 16 octets 
> 
> for a dataset of 5crore is neligible 
> it used hexdecimal right 16^26
> which is near about 1157000000000000000000000000000000
> where as the dataset is of 50,00,00,000 (50 crore)

- uuid.org logic behind working know about it -- DONE
- docker launch having any port  ( sharing of the path )
	- HTTP request to get the data -- DONE
	- ==it will give me data when called from eralng== 
	- use postman --DONE
	- also test for csv,xls,xlsx,txt --DONE

API Endpoints : 
- campaign/getvalidatednumbers

## Docker Installation and Usage  : ==PENDING==

Docker: A docker container, unlike a virtual machine and container, does not require or include a separate operating system. Instead, it relies on the Linux kernel's functionality and uses resource isolation.

Linux kernel functionality : its has the functionality to fairly distribute the CPU time 
among all the process

The Memory Managment Unit: it is a sub-unit that is responsible for memory managment distribution 


## Problem Statement

Java + Springboot 

#### Problem Statement: 
To make a call from erlang, then to get the data from Java code

#### WorkFlow: 
validateNumber_Perf --> Controller --> /Post -> Path Variable
Postman -> Post : `https://localhost:1200/<getValidnumbers>`
After this 

Since this is from java project ( will intergrate springboot ) :
since it being deployed locally i will use docker to launch on a certain port ( of my choice )

### Milestones 






- Intergrate a controller than will get called 
	- Import springboot -- DONE
	- Call Method (POST) -- DONE
	- decide the body to be sent --DONE`

```erlang
{
    "validation_result": {
        "invalid_format_numbers": 0,
        "duplicate_count": 27,
        "total_numbers": 100000,
        "dnd_count": 99973,
        "actual_count": 27,
        "valid_format_numbers": 100000
    },
    "total_time": "0.071seconds.",
    "load_bin_time": "0.023seconds. ",
    "validation_time_single": "0.047seconds.",
    "initial_load_time": 0.085
}
```

- the Output file -- DONE
- Postman -- DONE
	- Test the body as a result --DONE
	  

## 2nd Iteration 


- Do the check implementation  -- DONE
- /bin check for it -- DONE


## 3rd Iteration (most likely the last) ==DONE==

#### Development work 

1. Look for the port number change --DONE
	1. check if the port number can be file wise specifically changed -- DONE
2. Make the logic of 
	1. more readable with unnecessary checks 
4. Exception handling -- DONE
5. Next task 
	1. how to run these 3 on java to project 
	2. pom.xml for all these three 
	3. can the sequence change from the postman input feilds -- DONE
	4. handle the .bin only should come here -- DONE

#### Testing work 


1. Do invalid for two number on the same line
2. Write the test case to check of 10 phone numbers.
3. Write the test case to check 100 phone numbers.
4. Write the test case to check 1 crore phone numbers. 
5. Unit Test 
	1. Case to handle the input output file cases 
#### Learning work

- ==Why while you call the post method ? how does it run parallel ?== 
- ==Is it possible to only one call is allowed in there ?==
- ==how can i introduce multi threading in here ?== 
- ==how does the code actually work this fast ? also validate for different answers ?==
- ==how does it automatically handle the overwrite in writer.write()== -- DONE
- ==why we cannot run multiple spring application on the same port==

- Docker 
	- Setup of docker 
	- Implementation of docker in a file 
		- add file 
		- add port number 
	- Deployment and calling from erlang 
- Know how docker works 
	- How deployment works in docker ?
	- How to make a docker container ?

#### Concluding 
Make it more quick using Multithreading.





# Setup ==DONE==

### Pre-Requiste : 

- Java Version : 23.0.1
	- install via browser debian file t
	- unpkg it 
- Maven Version : Apache Maven 3.8.7 
	- sudo apt install mvn
- Java home setup 
	- sudo update-alternatives --config java
	- copy and the paste in nano ~/.
	- paste 
	- echo $JAVA_HOME

## Setup:

- Go to terminal 
- git clone rnd_main 
- go to main.java in validnumber_perf 
	- if you want to change the port number change it 
- go to validnumbers_perf
- mvn clean install 
- mvn compile
- mvn spring-boot:run 


---

# Task : Merging of 3 services into 1 ==IN PROGRESS==

Number of services and then working 

1. Dynamicval-perf
2. Multi-dynamic-val-perf 
3. validatenumber-perf

### Working of the Projects 

- validatenumber-perf
	- Phone number validation 
- multi-dynamic-val-perf
	- SMS and Phone number validation 
- dynamicval-perf
	- 

Questions : 
- do i have to fix all of the service working 
	- like do you want to return in json format 
- in the multi dynamic why there is the need of two main function and mostly the code is the same 
- and do i have to fix the code that seems to be wrong 
- what does dynamic mean here -- multi dynamic what is ST dynamic 
- sfm is it state flow managment ?


Approaches : 

1) Direct Integration
	1) i.e code base merging directly adding of the code into one 
2) create a folder 
3) Use linking approach 
	1) so for now create a folder 
	2) application 
		1) Campaign 
		2) Dynamic Camaign
		1) main.java 
5) Now after that link the campign and then dynamic to validate phone numbers then what you do is u run it and check if it works 
6) Once the other service are ready link it to the other repo 


7) and then link it accorindgly 

8) Jar Aggregation 
	1) Library based approach 


---



# Code Review : Refactoring ==DONE== 

Optional create a file for every function done in the main 

in the function binCreation:
bin creation file path 
bin creation bin file path 

checkExtension will return true or false 
(isvalidExtenstion)
arugments ( String path ) 
array of string extenstion 

> Note : the true and false function should have verb like isvalid hasvalid like this 
> client should be easily to know what 

isduplicatecheck --> checkDuplicate 
setduplicatecheck -> setcheckDuplicate 

isdndcheck --> checkDnd
setisdndcheck --> setcheckDnd


validsingle  change name 

create a new function to check for writeduplicateinfile
catch forgotten here in PhoneNumberListValidator 

File Close in finally 

Well Tested 
Robust test 
Timer logic stash 


# Code Review : Bob Sir 

give port number inline while running the installation.sh 
or application.yml 

1. xls,xlsx,csv,txt make it as constant 
   do compile the regex before using it in the matches  : DONE 
   
2. replace uses regex or not check it .
   replace and replace all ( check this ). : DONE ( use replace over replace all

3. check if the substring is needed nor not
	1. count of UUID : 36
	2. count of UUID without dash : 32
	3. count of substring is : 27
   ==string builder== x 2 : DONE
   
4. numlng - BaseNumber do it once 
   `validNumberBitmap.contains(numLng - BASE_NUMBER)` also contain this -- DONE
   
5. Bitmap clear it -- DONE

>do the right thing for xls does work like that just by adding extension 
>do check 

>check for headers as well to handle headers 

> If sheet comes then it should take the first sheet 


Add a option for output format -- Jayant

Test : 
| Size | Time | Output File | Count | 
--
| 10  | 1sec | Done | Done |
| 1cr | 7.9sec | Done | Done |




Complete this by 4 



























