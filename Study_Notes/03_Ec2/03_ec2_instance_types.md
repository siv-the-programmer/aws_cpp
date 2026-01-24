# EC2 Instance Types

## What Is an EC2 Instance Type?
An EC2 instance type defines the hardware profile of a virtual server.It controls CPU memory networking and storage performance.When launching an EC2 instance you are choosing how powerful the server should be.

## Why Instance Types Exist
Different applications require different resources.A web server needs balance.A database needs memory.A video processor needs CPU.AWS provides multiple instance families so you only pay for what your workload actually needs.

## Instance Type Naming Format
Instance types follow this structure:
family + generation + size
```
Example:
t3.micro

t = instance family  
3 = generation  
micro = size

Another example:
m6.large

m = general purpose  
6 = sixth generation  
large = instance size
```

## General Purpose Instances
```
Examples:
t3  
t4g  
m5  
m6  

Used for:
Web servers
Backend APIs
Development environments
Small to medium databases

Provides a balanced mix of CPU memory and networking.This is the default choice when you are unsure.
```

## Compute Optimized Instances
```
Examples:
c5  
c6  

Used for:
High performance web servers
Batch processing
Media encoding
Scientific workloads

Designed for sustained high CPU usage.
```

## Memory Optimized Instances
```
Examples:
r5  
r6  

Used for:
Databases
In-memory caching
Real-time analytics

Designed for workloads that require large amounts of RAM.
```

## Storage Optimized Instances
```
Examples:
i3  
i4  
d2  

Used for:
Big data
Data warehousing
Log processing
High IOPS workloads

Designed for very fast disk throughput.
```

## Accelerated Computing Instances
```
Examples:
p-series
g-series
f-series

Used for:
Machine learning
AI training
Graphics rendering
Video processing

These instances use GPUs or hardware accelerators.
```

## Instance Sizes
Within each family instance sizes increase in power:
```
nano
micro
small
medium
large
xlarge
2xlarge

Same family different capacity.
```

## Burstable Performance Instances
The t-series instances are burstable.
```
Examples:
t2
t3
t4g

They provide:
Low baseline CPU
Ability to burst during spikes
CPU credit system

Good for low traffic or inconsistent workloads.
Not suitable for constant high CPU usage.
```

## Free Tier EC2
AWS Free Tier includes:
t2.micro or t3.micro
750 hours per month

This is why most beginner projects use t3.micro.

## How To Choose The Right Instance
Identify the bottleneck:
CPU heavy workloads use compute optimized.
Memory heavy workloads use memory optimized.
Disk heavy workloads use storage optimized.
Balanced workloads use general purpose.

You can resize instances later if requirements change.

## Common Exam Confusion
Instance type defines hardware.
AMI defines operating system.
EBS defines storage.
Security groups define network access.

These are separate components.

## Summary
EC2 instance types determine the compute power of your server.
Main families:
General Purpose
Compute Optimized
Memory Optimized
Storage Optimized
Accelerated Computing

Choose based on workload not price.

Instance type controls hardware not software.
