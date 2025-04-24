

Step 1: Run the command
```bash  
sudo update-alternatives --config java  
```

you will see an output like this
```  
There are 3 choices for the alternative java (providing /usr/bin/java).

  Selection    Path                                          Priority   Status  
------------------------------------------------------------  
  0            /usr/lib/jvm/jdk-23.0.1-oracle-x64/bin/java    385884160 auto mode  
  1            /usr/lib/jvm/java-21-openjdk-amd64/bin/java    2111      manual mode  
* 2            /usr/lib/jvm/jdk-17.0.12-oracle-x64/bin/java   285310976 manual mode  
  3            /usr/lib/jvm/jdk-23.0.1-oracle-x64/bin/java    385884160 manual mode

Press <enter> to keep the current choice[*], or type selection number:

```

Here `*`  represents the current JDK version selected

Step 2: In the input section enter the number shown before your desired JDK version like, for `jdk-21` we will enter `1`

## References

### Source Material(s)  
[What is command to see all java versions installed on linux]([https://superuser.com/questions/569633/what-is-command-to-see-all-java-versions-installed-on-linux)](https://superuser.com/questions/569633/what-is-command-to-see-all-java-versions-installed-on-linux\) "https://superuser.com/questions/569633/what-is-command-to-see-all-java-versions-installed-on-linux)")