# An Amazon Machine Image (AMI) is a bootable template used to launch EC2 instances.

# An AMI includes:

Operating system

Installed software

Configuration settings

One or more EBS snapshots

# AMIs enable:

Rapid instance launches

Identical environments

Auto Scaling

Disaster recovery

# ypes of AMIs:

AWS-provided (Amazon Linux, Ubuntu, Windows)

Marketplace AMIs

Custom AMIs

# Key distinction:

Snapshot = disk backup

AMI = launchable system template

Lifecycle understanding:

Create or modify EC2 instance

Create AMI

AMI references snapshots

New EC2 instances launched from AMI

# Exam mindset:

If the question mentions preconfigured EC2 instances, think AMI.
