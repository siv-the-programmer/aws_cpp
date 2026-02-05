# Amazon Elastic Block Store (EBS)

## What Is Amazon EBS?
Amazon Elastic Block Store (EBS) is a managed block storage service designed to be used with Amazon EC2 instances. It provides persistent storage that behaves like a traditional hard drive or solid-state drive attached to a server.

EBS is commonly used for operating systems, databases, and applications that require low-latency and consistent performance.

AWS Documentation:
https://docs.aws.amazon.com/ebs/

---

## Why EBS Exists
EC2 instances provide compute power, but compute alone is not enough for real workloads. Data must survive restarts, failures, and scaling events.

EBS exists to separate:
- Compute (EC2)
- Storage (EBS)

This separation allows storage to persist even when instances are stopped, replaced, or terminated.

---

## What Block Storage Means
Block storage stores data in fixed-size blocks. The operating system controls:
- File systems
- Disk formatting
- Read and write operations

This allows direct disk-level access, which is required by databases and operating systems.

EBS is different from:
- Amazon S3 (object storage)
- Amazon EFS (file storage)

---

## Core Characteristics

### Persistence
EBS volumes are persistent by default. Data remains available after an EC2 instance is stopped or terminated unless the volume is explicitly configured to delete on termination.

### Availability Zone Scope
Each EBS volume exists in a single Availability Zone. A volume can only be attached to EC2 instances in the same AZ.

### Attachment Model
By default, one EBS volume can be attached to one EC2 instance at a time.

### Durability
AWS automatically replicates EBS data within the Availability Zone to protect against hardware failure.

---

## Common Use Cases
Operating system boot volumes  
Databases  
Application data  
Stateful workloads  

---

## Common Exam Confusion
EBS is not regional  
EBS is not shared storage by default  
EBS does not automatically back up data  
EBS is not free  

---

## Summary
Amazon EBS is persistent block storage for EC2, scoped to a single Availability Zone and designed for stateful workloads.
