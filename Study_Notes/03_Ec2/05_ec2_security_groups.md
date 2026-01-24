# EC2 Security Groups

## What Is a Security Group
A security group is a virtual firewall that controls network traffic to and from an EC2 instance.It determines what traffic is allowed and what traffic is blocked.

Official AWS Documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html

## What Security Groups Control
Security groups control:
Inbound traffic entering the instance
Outbound traffic leaving the instance

Rules are evaluated based on:
Protocol
Port number
Source or destination

## Inbound Rules
Inbound rules define what traffic is allowed into the instance.

Examples:
Allow SSH on port 22 from your IP
Allow HTTP on port 80 from the internet
Allow HTTPS on port 443 from the internet

AWS Reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules.html

If no inbound rules exist the instance cannot be accessed.

## Outbound Rules
Outbound rules define what traffic the instance can send out.

By default:
All outbound traffic is allowed.

AWS Reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules.html#outbound-rules

Outbound rules can be restricted for security purposes.

## Stateful Firewall
Security groups are stateful.

This means:
If inbound traffic is allowed the return traffic is automatically allowed.
You do not need to configure response traffic.

AWS Reference:
https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#VPC_SecurityGroups

## Security Group Scope
Security groups:
Attach to EC2 instances
Can be reused across multiple instances
Can reference other security groups
Apply immediately when modified

AWS Reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html#sg-basics

## Allow Rules Only
Security groups support allow rules only.

There are:
No explicit deny rules.

Any traffic not explicitly allowed is denied automatically.

AWS Reference:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules.html

## Example Security Group Setup
Typical web server configuration:

Inbound:
SSH port 22 from your IP
HTTP port 80 from 0.0.0.0/0
HTTPS port 443 from 0.0.0.0/0

Outbound:
Allow all traffic

This is commonly used for public-facing EC2 servers.

## Security Groups vs Network ACLs
Security Groups:
Instance-level
Stateful
Allow rules only

Network ACLs:
Subnet-level
Stateless
Allow and deny rules

AWS Reference:
https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Security.html

## Default Security Group
Every VPC includes a default security group.

Default behavior:
Allows inbound traffic only from resources using the same security group
Allows all outbound traffic

AWS Reference:
https://docs.aws.amazon.com/vpc/latest/userguide/default-security-group.html

Best practice is to create custom security groups per workload.

## Common CCP Exam Traps
Security groups are stateful.
Security groups do not support deny rules.
Security groups apply at the EC2 instance level.
Security group rule changes apply immediately.
Security groups are the first place to check for connectivity issues.

## Summary
Security groups act as virtual firewalls for EC2 instances.

They define:
Who can access the instance
Which ports are open
What outbound traffic is allowed

If traffic is not explicitly allowed it is denied by default.

Security groups are one of the most important AWS security concepts.
