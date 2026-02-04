# Amazon Elastic Block Store (EBS) – Full Explanation

## Overview

Amazon Elastic Block Store (EBS) is a managed block-level storage service designed for use with Amazon EC2 instances. It provides persistent storage that behaves like a traditional hard drive or SSD attached to a server.

EBS is commonly used for operating system volumes, databases, and applications that require low-latency access to data.

---

## What “Block Storage” Means

Block storage stores data in fixed-size blocks. The operating system is responsible for:
- Formatting the volume
- Managing the file system
- Reading and writing data

This is different from object storage (Amazon S3) and file storage (Amazon EFS).

---

## Key Characteristics

### Persistence

EBS volumes are persistent by default. Data remains available even when the EC2 instance is stopped or terminated, unless the volume is configured to delete on termination.

### Availability Zone Scope

Each EBS volume exists in a single Availability Zone (AZ).  
A volume can only be attached to EC2 instances within the same AZ.

### Attachment Model

By default, one EBS volume can be attached to one EC2 instance at a time.  
Special cases exist using EBS Multi-Attach.

### Durability

EBS is designed to be highly durable by replicating data within its Availability Zone.

---

## EBS Volume Types

### General Purpose SSD (gp3 / gp2)

Balanced price and performance.  
Used for boot volumes, application servers, and general workloads.

### Provisioned IOPS SSD (io2)

Designed for mission-critical workloads that require predictable and sustained I/O performance.

### Throughput Optimized HDD (st1)

Optimized for large, sequential workloads such as big data processing and log storage.

### Cold HDD (sc1)

Lowest-cost option.  
Used for infrequently accessed data where performance is not critical.

---

## EBS Lifecycle

### Volume Creation

An EBS volume is created with a specific size, type, and Availability Zone.

### Attachment

The volume is attached to an EC2 instance in the same AZ.

### Usage

The operating system formats and mounts the volume for use.

### Detachment

The volume can be detached and reattached to another EC2 instance in the same AZ.

### Deletion

EBS volumes must be manually deleted unless configured to delete on instance termination.

---

## EBS Snapshots

### What Snapshots Are

EBS snapshots are point-in-time backups of EBS volumes.

### Snapshot Behavior

- The first snapshot is a full backup
- Subsequent snapshots are incremental
- Snapshots are stored in Amazon S3 (managed by AWS)

### Snapshot Use Cases

- Backup and restore
- Disaster recovery
- Volume cloning
- Cross-region migration

---

## EBS and Amazon Machine Images (AMIs)

AMIs use EBS snapshots as their storage foundation.

Workflow:
1. Create or modify an EC2 instance
2. Take EBS snapshots
3. Create an AMI
4. Launch new EC2 instances from the AMI

An AMI is a launchable system template, not just a disk backup.

---

## EBS Multi-Attach

### What Multi-Attach Does

Allows a single EBS volume to be attached to multiple EC2 instances simultaneously.

### Limitations

- Only supported on io1 and io2 volumes
- Instances must be in the same Availability Zone
- Applications must manage write coordination

### Exam Warning

EBS Multi-Attach does not provide file-level locking and is not a replacement for Amazon EFS.

---

## EBS vs Other AWS Storage Services

### EBS vs Amazon S3

EBS is block storage for EC2.  
S3 is object storage for applications and backups.

### EBS vs Amazon EFS

EBS is designed for single-instance attachment.  
EFS is designed for shared access across multiple EC2 instances.

### EBS vs Instance Store

EBS is persistent storage.  
Instance Store is temporary and data is lost on stop or hardware failure.

---

## Shared Responsibility Model for EBS

### AWS Responsibilities

- Physical data centers
- Storage hardware
- Infrastructure availability

### Customer Responsibilities

- Data protection
- Volume encryption
- Snapshot strategy
- Access control using IAM

---

## Common Exam Traps

- EBS volumes are not regional
- EBS does not back up data automatically
- EBS is not free
- EBS is not shared storage by default
- Stopping an instance does not delete EBS unless configured

---

## One-Line Mental Model

Amazon EBS is the default persistent disk for EC2, scoped to a single Availability Zone and protected using snapshots.
