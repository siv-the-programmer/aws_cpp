# EBS Multi-Attach allows a single EBS volume to be attached to multiple EC2 instances simultaneously.

This feature exists to support clustered applications that require shared block storage.

# Strict limitations:

Only supported on io1 and io2 volumes

All attached instances must be in the same Availability Zone

Applications must coordinate writes (AWS does not handle locking)

What Multi-Attach does NOT do:

It does not provide file-level locking

It does not prevent corruption

It does not behave like EFS

# Correct use cases:

Databases with cluster-aware file systems

Enterprise applications designed for shared block devices

Incorrect use cases:

General file sharing

Web servers sharing assets

Applications without write coordination

# Exam logic:
If AWS mentions “multiple EC2 instances access the same storage”:

File-level → EFS

Object-level → S3


Block-level with cluster software → EBS Multi-Attach
