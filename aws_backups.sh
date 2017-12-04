#!/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin

# Get date
$date=date

# You can find your instance ID at AWS Manage Console
instanceID="YOUR-INSTANCE-ID"

# Your can find your owner ID at AWS Manage Console
ownerID="YOUR-OWNER-ID"

# Your prefer AMI Description
amiDescription="$instanceID $date"

# Setup AMI Name
amiName="$instanceID"


# Create AMI
aws ec2 create-image --instance-id $instanceID --name "$amiName" --description "$amiDescription" --no-reboot
