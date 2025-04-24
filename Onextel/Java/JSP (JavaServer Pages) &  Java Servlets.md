Prerequisites: 
1. Java must be installed. 
2. [Install Tomcat on Linux](https://www.liquidweb.com/blog/how-to-install-apache-tomcat-on-linux-almalinux/) 

# Install Tomcat on Linux
>[!IMPORTANT]
>Prerequisites: 
>1. Java must be installed

1. Create a Tomcat service account
```bash
sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat
```
1. Install Apache Tomcat: 
```bash
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.36/bin/apache-tomcat-10.1.36.tar.gz
```
1. Create a directory that will store tomcat 10:
```bash
sudo mkdir /opt/tomcat
```
1. Extract the *tar* file and copy it to the `/opt/tomcat` directory:
```bash
sudo tar xzf apache-tomcat-10.*.tar.gz -C /opt/tomcat/ --strip-components=1
```
>[!NOTE]
>The **–strip-components** option removes a specified number of leading directory components from the file paths within the archive as they are extracted. In this case, **–strip-components=1** indicates that one leading directory component should be removed.

1. Grant the Tomcat user and group permission: 
```bash
sudo chown -R tomcat: /opt/tomcat
```
1. Make the shell scripts in Tomcat’s **_bin_** directory executable
```bash
sudo sh -c 'chmod +x /opt/tomcat/bin/*.sh'
```

# Create Tomcat Systemd service

1. must write a starting script to manage Tomcat as a **_systemd_** service. Let’s create a file named **_tomcat.service_**:
```bash
sudo nano /etc/systemd/system/tomcat.service
```
1. Add the following line:
>[!IMPORTANT]
>First replace entire `{your_java_home_path}` variable with the Path to your JAVA_HOME variable by checking using the command: 
`echo $JAVA_HOME`
Paste the output of the above command in place of `{your_java_home_path}`.

Then add the entire content in the file `/etc/systemd/system/tomcat.service`

```bash
[Unit]
Description=Tomcat webs servlet container
After=network.target

[Service]
Type=forking

User=tomcat
Group=tomcat

Environment="JAVA_HOME={your_java_home_path}"
Environment="JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom"

Environment="CATALINA_BASE=/opt/tomcat"
Environment="CATALINA_HOME=/opt/tomcat"
Environment="CATALINA_PID=/opt/tomcat/temp/tomcat.pid"
Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

[Install]
WantedBy=multi-user.target
```

1. Reload **systemctl** to confirm that system recognizes the new changes:
```bash
sudo systemctl daemon-reload
```
1. To start and enable the Apache Tomcat service, execute the following commands:
```bash
sudo systemctl start tomcat
sudo systemctl enable --now tomcat
```

