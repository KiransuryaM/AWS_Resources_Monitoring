#!/bin/bash

#############################################
# Author: Kiran Surya M
# Date: 26-06-2024
# This script tells about aws resources usage
# Version : 1
############################################

#AWS EC2
#AWS S3
#AWS LAMBDA
#AWS IAM USERS
set -x

set -e

set -o
# List aws s3 buckets
echo "prinitng about s3 buckets"
aws s3 ls

#List ec2 instances
echo "printing ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List IAM Users
echo "printing IAM Users"
aws iam list-users

#List lambda functions
echo "Lambda functions"
aws lambda list-functions

