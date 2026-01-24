# SSH Access to EC2 Instances

## What Is SSH
SSH stands for Secure Shell. It is a secure network protocol used to remotely connect to a Linux server.

# SSH allows you to:

Access the terminal of an EC2 instance
Run Linux commands remotely
Install software
Configure applications
Manage the operating system

Official documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstances.html

## How SSH Works
SSH uses:
Public key encryption
Private key authentication

AWS does not use passwords for Linux EC2 instances.

Instead you connect using:
A private key file
A matching public key stored on the instance

If you lose the private key you cannot SSH into the instance.

## Key Pair Concept
An EC2 key pair consists of:
Public key stored on the instance
Private key downloaded and kept by you

AWS never stores your private key.

Official documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html

## When Key Pairs Are Used
Key pairs are used:
Only for Linux EC2 instances
Only for SSH authentication
Only during initial access

Windows EC2 uses RDP not SSH.

## Required Components for SSH
To successfully SSH into an EC2 instance you must have:

1 A running EC2 instance  
2 A key pair associated with the instance  
3 Port 22 open in the security group  
4 The instance public IPv4 address or public DNS  
5 The private key file with correct permissions  

If any one of these is missing SSH will fail.

## Security Group Requirement
```
Inbound rule must allow:

Protocol: TCP  
Port: 22  
Source: your IP address  

Example:
22 TCP 203.0.113.25/32
```
Official documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules.html

Never open SSH to 0.0.0.0/0 in production.

## SSH Command Format

Basic SSH command:

```
ssh -i keypair.pem username@public-ip

Example:

ssh -i mykey.pem ec2-user@54.123.45.67
```

## Default SSH Usernames

Common AMI usernames:
```

Amazon Linux:
ec2-user

Ubuntu:
ubuntu

Red Hat:
ec2-user or root

Debian:
admin
```
# Using the wrong username will cause SSH failure.

---

AWS reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connection-prereqs.html

## File Permission Requirement
SSH requires strict key permissions.
```

Command:

chmod 400 mykey.pem

Meaning:
Owner read-only access

If permissions are too open SSH will refuse to connect.
```

Official documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html

---

## Connecting from Linux or macOS
```
Example:

chmod 400 mykey.pem
ssh -i mykey.pem ec2-user@public-ip

Works in:
Linux terminal
macOS terminal
WSL on Windows
```

## Connecting from Windows
```
Options:
WSL recommended
Git Bash
PowerShell with OpenSSH

AWS documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-ssh.html
```

## Common SSH Errors
Permission denied (publickey):
Wrong username or wrong key

Connection timed out:
Port 22 blocked in security group
Instance has no public IP

Unprotected private key file:
Incorrect chmod permissions

These are the most common beginner issues.

## Best Practices
Never commit private keys to GitHub.
Store key files securely.
Restrict SSH access to your IP only.
Use different key pairs per environment.
Rotate keys if compromised.

## Summary
SSH is the primary method for accessing Linux EC2 instances.

You need:
A key pair
Port 22 open
Correct username
Correct file permissions
Public IP address

Without SSH access an EC2 instance cannot be managed.

SSH provides secure encrypted access to cloud servers.
