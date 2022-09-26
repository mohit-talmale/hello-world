#!/bin/bash

sudo su -
yum install docker -y
service docker start
docker login -u mohit1talmale -p Bunty@171
docker pull mohit1talmale/demo-project:newtag

