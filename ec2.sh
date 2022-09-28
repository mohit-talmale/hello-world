#!/bin/bash

sudo su -
yum update -y
yum install docker -y
service docker start
docker login -u mohit1talmale -p Bunty@171
docker pull mohit1talmale/demo-project:newtag2
docker run -d --name myapp_container -p 8082:8080 myapp_image:newtag2