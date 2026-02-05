# Amazon Elastic File System (EFS)

## What Is Amazon EFS?
Amazon Elastic File System (EFS) is a managed file storage service that can be shared across multiple EC2 instances.

AWS Documentation:
https://docs.aws.amazon.com/efs/

---

## Why EFS Exists
Some workloads require multiple EC2 instances to access the same files simultaneously.

EFS provides shared file access without managing servers.

---

## Key Characteristics
File-level storage  
Linux-based workloads  
Multiple EC2 instances can mount simultaneously  
Regional and multi-AZ  

---

## Common Use Cases
Shared web content  
Content management systems  
Shared application data  

---

## EFS vs EBS
EBS is single-instance focused  
EFS is multi-instance shared storage  

---

## Summary
EFS is managed shared file storage for Linux workloads.
