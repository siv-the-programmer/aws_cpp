# EBS Snapshots are point-in-time backups of EBS volumes.

Snapshots are stored in Amazon S3, but not directly accessible as S3 objects.

# Snapshot behavior:

First snapshot is full

All subsequent snapshots are incremental

Only changed blocks are saved

Deleting a snapshot does not break others

What snapshots enable:

Disaster recovery

Cross-region migration

Volume cloning

AMI creation

# Operational details:

Snapshots are regional

Volumes created from snapshots can be in any AZ within the region

Snapshots can be copied to other regions

Important clarification:
Snapshots back up the volume, not the EC2 instance.
Memory, CPU state, and running processes are NOT captured.

# Exam traps:

Snapshots are not real-time replication

Snapshots do not replace high availability


Snapshots are not automatic unless configured
