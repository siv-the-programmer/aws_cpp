# EC2 Instance Connect

## What Is EC2 Instance Connect
EC2 Instance Connect is an AWS feature that allows you to connect to a Linux EC2 instance using SSH without permanently storing a private key on your computer.

It provides temporary SSH access through the AWS console or AWS CLI.

Official documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect.html

## What Problem It Solves
Traditional SSH requires:
Downloading a private key
Storing the key locally
Managing key rotation
Recovering lost keys

EC2 Instance Connect removes long-term key management.

AWS injects a temporary public key into the instance for a short time.

## How It Works
When you connect:
AWS pushes a temporary SSH public key to the instance
The key is valid for approximately 60 seconds
SSH connection is established
The key automatically expires

No permanent key is stored.

## Requirements
To use EC2 Instance Connect you must have:

A Linux EC2 instance
Amazon Linux AMI
EC2 Instance Connect package installed
Instance in a public subnet
Port 22 open in the security group
Public IPv4 address or Elastic IP

AWS reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect-prerequisites.html

## Supported Operating Systems
EC2 Instance Connect supports:
Amazon Linux 2
Amazon Linux 2023
Ubuntu (supported versions)

It does not work on Windows instances.

## How to Connect Using the Console
Steps:
Open EC2 console
Select the instance
Click Connect
Choose EC2 Instance Connect
Click Connect

AWS handles SSH key injection automatically.

AWS guide:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html

## IAM Permissions Required
You must have permission to use:
ec2-instance-connect:SendSSHPublicKey
ec2:DescribeInstances

Without IAM permission the connection will fail.

AWS reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect-set-up.html

## Differences from Normal SSH
Traditional SSH:
Uses permanent key pairs
Key stored locally
Manual key management

EC2 Instance Connect:
Uses temporary keys
No key download
Short-lived access

## CCP Exam Notes
EC2 Instance Connect:
Provides browser-based SSH
Uses temporary SSH keys
Requires port 22
Works only with Linux
Requires IAM permission

If AWS mentions:
Connect without managing keys
Temporary SSH access
Browser-based connection

The answer is EC2 Instance Connect.

## Summary
EC2 Instance Connect provides secure temporary SSH access to Linux EC2 instances.

It eliminates permanent private key storage and simplifies access management.

It is best used for:
Quick troubleshooting
Training environments
Temporary access

It is not a replacement for full SSH key management in production.
