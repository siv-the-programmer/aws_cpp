# EBS Multi-Attach

## What Is EBS Multi-Attach?
EBS Multi-Attach allows a single EBS volume to be attached to multiple EC2 instances at the same time.

AWS Documentation:
https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes-multi.html

---

## Why Multi-Attach Exists
Some enterprise and clustered applications require multiple servers to access the same block storage device simultaneously.

Multi-Attach exists to support these advanced use cases.

---

## Supported Volume Types
Only supported on:
io1  
io2  

Other volume types do not support Multi-Attach.

---

## Availability Zone Requirement
All EC2 instances using Multi-Attach must be in the same Availability Zone as the EBS volume.

Cross-AZ attachment is not possible.

---

## Application Responsibility
AWS does not manage:
- File locking
- Write coordination
- Data consistency

Applications must be cluster-aware and capable of handling concurrent writes safely.

---

## What Multi-Attach Is NOT
Not shared file storage  
Not safe for general workloads  
Not a replacement for Amazon EFS  

---

## Exam Decision Rule
Shared files across EC2 instances → Amazon EFS  
Shared block storage with cluster software → EBS Multi-Attach  

---

## Summary
EBS Multi-Attach is a specialized feature for clustered workloads that require shared block-level access.
