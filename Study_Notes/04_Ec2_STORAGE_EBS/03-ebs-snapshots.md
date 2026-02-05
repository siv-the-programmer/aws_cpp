# EBS Snapshots

## What Is an EBS Snapshot?
An EBS snapshot is a point-in-time backup of an EBS volume.

Snapshots are stored in Amazon S3 but are fully managed by AWS and are not directly accessible as S3 objects.

AWS Documentation:
https://docs.aws.amazon.com/ebs/latest/userguide/ebs-snapshots.html

---

## Why Snapshots Exist
EBS volumes are scoped to a single Availability Zone. Snapshots allow data to be backed up, restored, and moved across Availability Zones and regions.

---

## Snapshot Behavior
The first snapshot is a full backup  
Subsequent snapshots are incremental  
Only changed blocks are stored  

Snapshots are independent after creation.

---

## What Snapshots Capture
Snapshots capture:
- Disk data
- File systems
- Application data on disk

Snapshots do NOT capture:
- Memory
- CPU state
- Running processes

---

## Regional Scope
Snapshots are regional.  
Volumes created from snapshots can be created in any Availability Zone within the region.

Snapshots can also be copied across regions.

---

## Common Use Cases
Backup and recovery  
Disaster recovery  
AMI creation  
Data migration  

---

## Common Exam Confusion
Snapshots are not automatic  
Snapshots are not real-time replication  
Snapshots do not replace high availability  

---

## Summary
EBS snapshots are incremental, regional backups used for recovery, migration, and AMI creation.
