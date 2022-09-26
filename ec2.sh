#!/bin/bash

yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "<h2>EC2 running on  $(hostname -f) </h2>" > /var/www/html/index.html