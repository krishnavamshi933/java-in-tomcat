#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://krishnavamshi/java_code/sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@172.31.7.231:/home/ec2-user/tomcat/apache-tomcat-9.0.65/webapps
ssh ec2-user@172.31.7.231 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.65/bin/
    ./shutdown.sh
    ./startup.sh
HERE