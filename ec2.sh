#!/bin/bash

sudo su -
yum update -y
yum install docker -y
service docker start
docker login -u mohit1talmale -p Bunty@171
docker rmi mohit1talmale/demo-project:newtag2
docker pull mohit1talmale/demo-project:newtag2
docker run -p 80:8080 mohit1talmale/demo-project:newtag2