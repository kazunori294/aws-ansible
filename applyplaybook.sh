#!/bin/sh

IID=`/usr/bin/curl -s http://169.254.169.254/latest/meta-data/instance-id`
NAME=`/opt/aws/bin/ec2-describe-instances | grep ${IID} | grep TAG | grep Name | awk '{print $5}'`
HOSTGROUP=`/opt/aws/bin/ec2-describe-instances | grep ${IID} | grep TAG | grep Hostgroup | awk '{print $5}'`

cd /aws-ansible && /usr/bin/git pull

/usr/local/bin/ansible-playbook /aws-ansible/${HOSTGROUP}/site.yml  -vvv
