#!/bin/bash
tag=$1
env=$2
IP=`grep $env env.properties | cut -d ':' -f2 |tr -d "[:space:]"`
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://krishnavamshi/java_code/sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@${IP}:/home/ec2-user/tomcat/apache-tomcat-9.0.65/webapps
ssh ec2-user@${IP} << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.65/bin/
    ./shutdown.sh
    ./startup.sh
HERE