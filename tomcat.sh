sudo dnf install java-11-amazon-corretto -y
wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.43/bin/apache-tomcat-10.1.43.tar.gz
tar -zxvf apache-tomcat-10.1.43.tar.gz
vim apache-tomcat-10.1.43/conf/tomcat-users.xml
#inside the file
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<user username="tomcat" password="sagar123>" roles="manager-gui, manager-script"/>
vim apache-tomcat-10.1.43/webapps/manager/META-INF/context.xml
#uncommand or delete 21,22 line
vim apache-tomcat-10.1.43/webapps/manager/META-INF/context.xml
sh apache-tomcat-10.1.43/bin/startup.sh
#the copy-public port number :8080
