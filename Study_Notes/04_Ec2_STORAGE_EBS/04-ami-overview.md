# Amazon Machine Images (AMI)

## What Is an AMI?
An Amazon Machine Image (AMI) is a template used to launch EC2 instances.

An AMI defines:
- Operating system
- Installed software
- Configuration
- Storage layout

AWS Documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html

---

## Why AMIs Exist
AMIs allow EC2 instances to be launched consistently and repeatedly with the same configuration.

This enables:
- Auto Scaling
- Disaster recovery
- Fast provisioning

---

## AMI and EBS Relationship
AMIs are built using EBS snapshots.

Flow:
EBS volume → Snapshot → AMI → EC2 instance

---

## Types of AMIs
AWS-provided AMIs  
Marketplace AMIs  
Custom AMIs  

---

## Exam Confusion
AMI defines software  
Instance type defines hardware  
EBS defines storage  

These are separate components.

---

## Summary
An AMI is a launchable template that defines the software and configuration of an EC2 instance.
