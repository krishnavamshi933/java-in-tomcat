#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://krishnavamshi/code_build/jb-hello-world-maven-0.2.0.jar .
scp hello.war ec2-user@172.31.7.231:/home/ec2-user/tomcat/apache-tomcat-9.0.65/webapps
ssh ec2-user@172.31.7.231 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.65/bin/
    ./shutdown.sh
    ./startup.sh
HERE

