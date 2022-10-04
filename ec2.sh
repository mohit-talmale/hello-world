#!/bin/bash

sudo su -
yum update -y
yum install docker -y
service docker start
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum -y install terraform
touch ~/.bashrc
terraform -install-autocomplete
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container
wget https://github.com/mohit-talmale/hello-world/blob/master/terraform1/new.tf
terraform init
terraform apply --auto-approve

