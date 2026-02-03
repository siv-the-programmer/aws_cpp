# Amazon Elastic Block Store (EBS) is persistent block-level storage designed to be used with Amazon EC2 instances.
Block storage means the data is stored in fixed-size chunks (blocks), similar to a traditional hard drive or SSD.

# EBS is primarily used for:

Operating system disks

Databases

Application data requiring low latency

Stateful workloads

# Core properties:

EBS volumes are attached to EC2 instances

Each volume exists in one Availability Zone

Data persists independently of the EC2 instance lifecycle

Volumes can be detached and reattached to other instances in the same AZ

EBS vs other storage:

EBS ≠ S3 (object storage)

EBS ≠ EFS (shared file storage)

EBS behaves like a disk, not a bucket or shared folder

# Volume types and intent:

General Purpose SSD (gp3/gp2): default, balanced cost and performance

Provisioned IOPS SSD (io2): mission-critical, predictable I/O

Throughput Optimized HDD (st1): large sequential workloads

Cold HDD (sc1): infrequently accessed data

High-level design rule:
If an EC2 instance needs a disk that survives stop/start, EBS is the default answer.

# Exam traps:

EBS is not regional

EBS cannot be shared by default


EBS is not free (storage + IOPS)
