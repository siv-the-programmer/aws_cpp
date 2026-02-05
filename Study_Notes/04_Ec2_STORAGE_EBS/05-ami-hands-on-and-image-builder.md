# AMI Creation and EC2 Image Builder

## Manual AMI Creation
Manual AMI creation involves:
Launching an EC2 instance  
Configuring software  
Creating an AMI from the instance  

This approach does not scale well.

---

## What Is EC2 Image Builder?
EC2 Image Builder automates the creation, maintenance, and updating of AMIs.

AWS Documentation:
https://docs.aws.amazon.com/imagebuilder/

---

## Why Image Builder Exists
Manual AMI creation is error-prone and inconsistent. Image Builder ensures:
Repeatability  
Security patching  
Automated testing  

---

## Image Builder Components
Image pipelines  
Build components  
Validation steps  
Scheduled builds  

---

## When To Use Image Builder
Regular AMI updates  
Security-focused environments  
Large EC2 fleets  

---

## Summary
EC2 Image Builder automates AMI creation to ensure consistency, security, and scalability.
