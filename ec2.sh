#!/bin/bash

sudo su -
yum update -y
yum install docker -y
service docker start


