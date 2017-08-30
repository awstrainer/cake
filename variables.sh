#!/bin/bash

#set environment variables
export ANSIBLE_HOSTS=/home/local/aws_with_ansible1/cake/inventory/ec2.py 
export EC2_INI_PATH=/home/local/aws_with_ansible1/cake/inventory/ec2.ini
export AWS_ACCESS_KEY_ID='AKIAJVIMSNKHROFVIODQ'
export AWS_SECRET_ACCESS_KEY='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'

eval `ssh-agent` 

ssh-add ~/.ssh/newkey.pem
