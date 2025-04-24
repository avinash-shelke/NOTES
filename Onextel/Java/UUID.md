#java


UUID stands for the : universal unique identifier 
also refered as Global unique identifier 

UUID Class : 
that has two parameter mostsignificant64digit and leastsignificant64

```java 
UUID uuid = new UUID(mostSignificant64Bits, leastSignificant64Bits);
```

## Structure in UUID 

```java 
123e4567-e89b-42d3-a456-556642440000
xxxxxxxx-xxxx-Bxxx-Axxx-xxxxxxxxxxxx
```
A denotes the variant that defines the layout of the UUID 
B is the version that is made 

## Types of UUID 

1. Time-Based UUID (v1) : current timestamp and the mac address of the device generating UUID 
   
2. DCE-Security (v2) :  uses timestamp and mac adress but hte RFC 4122does not specify the exact generation details 

3. Name Based (v3) : these are from the hashed based names from a unique space 
2. Random (v4)



