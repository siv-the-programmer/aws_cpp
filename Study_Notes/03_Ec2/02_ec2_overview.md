## Amazon EC2 Overview

## What is an EC2 Instance?

Amazon Elastic Compute Cloud (EC2) is an AWS service that provides **resizable virtual servers in the cloud**.

An **EC2 instance** is a virtual machine that runs inside an AWS data center and behaves like a real computer:

- It has CPU
- It has memory (RAM)
- It has storage
- It runs an operating system
- It has a private IP address
- It can have a public IP address

Instead of buying physical servers, you launch EC2 instances on demand and pay only for the time they are running.

---

## Why EC2 Exists

Before cloud computing, companies had to:

- Buy physical servers
- Install operating systems manually
- Estimate future capacity
- Overpay for unused hardware
- Maintain cooling, power, and networking

EC2 removes all of that.

AWS owns the hardware.  
You control the virtual machine.

This allows you to:

- Launch servers in minutes
- Scale up or down instantly
- Pay per second or per hour
- Shut down resources when not needed

---

## What EC2 Is Used For

EC2 is used whenever you need **full control over a server**.

Common use cases include:

### Web Servers
- Hosting websites
- Running backend APIs
- Nginx or Apache servers

### Application Servers
- Python applications
- Node.js backends
- Java or .NET services

### Development and Testing
- Temporary environments
- CI/CD runners
- Sandbox testing

### Automation and Scripts
- Python automation jobs
- Cron-based tasks
- Scheduled maintenance scripts

### Legacy Applications
- Applications that cannot run on serverless services
- Software requiring OS-level access

---

## EC2 vs Your Local Computer

```

| Local Computer | EC2 Instance |
|----------------|--------------|
| Physical hardware | Virtual machine |
| Fixed capacity | Resizable |
| Runs at home | Runs in AWS data centers |
| Always on | Start and stop anytime |
| You maintain hardware | AWS maintains hardware |

```
From the operating system perspective, an EC2 instance behaves exactly like a Linux or Windows machine.

You connect using:

- SSH (Linux)
- RDP (Windows)

---

## Core EC2 Concepts

### Instance Types

EC2 instances come in different sizes and performance categories.

Examples:

- **t3 / t4g** – general purpose (most common)
- **c-series** – compute optimized
- **m-series** – balanced workloads
- **r-series** – memory optimized

Each instance type defines:

- Number of vCPUs
- Amount of RAM
- Network performance

---

### Amazon Machine Image (AMI)

An AMI is a **template** used to create EC2 instances.

It contains:

- Operating system
- Preinstalled software
- Configuration settings

Examples:

- Amazon Linux
- Ubuntu
- Windows Server

When you launch EC2, you always start from an AMI.

---

### Storage (EBS)

Most EC2 instances use **Elastic Block Store (EBS)** volumes.

EBS acts like a hard drive:

- Persists data
- Can be encrypted
- Can be detached and reattached

Stopping an EC2 instance does **not** delete its EBS volume by default.

---

### Security Groups

A security group is a **virtual firewall** for EC2.

It controls:

- Allowed inbound traffic
- Allowed outbound traffic

Example:

- Allow SSH on port 22
- Allow HTTP on port 80
- Allow HTTPS on port 443

Security groups are **stateful**, meaning return traffic is automatically allowed.

---

## EC2 Pricing Model

EC2 pricing is based on:

- Instance type
- Region
- Runtime duration

Common pricing options:

- **On-Demand** – pay as you go
- **Reserved Instances** – long-term discount
- **Spot Instances** – unused AWS capacity at lower cost

For AWS CCP, the most important concept is:

> You pay for compute time while the instance is running.

Stopped instances do not incur compute charges.

---

## When NOT to Use EC2

EC2 is powerful, but not always the best option.

Avoid EC2 when:

- You only need to run short tasks → use Lambda
- You don’t want to manage servers
- You want automatic scaling without configuration

EC2 provides **maximum control**, but also **maximum responsibility**.

---

## EC2 in the Shared Responsibility Model

AWS is responsible for:

- Physical data centers
- Hardware
- Networking infrastructure

You are responsible for:

- Operating system updates
- Security patches
- Firewall rules
- Installed software
- Access control

This is why EC2 is called **Infrastructure as a Service (IaaS)**.

---

## Summary

Amazon EC2 provides:

- Virtual servers in the cloud
- Full operating system control
- Scalable compute capacity
- Pay-as-you-go pricing

It is one of the most fundamental AWS services and forms the foundation for many cloud architectures.

Understanding EC2 is essential before learning:

- Auto Scaling
- Load Balancers
- VPC networking
- Containers
- DevOps automation
- Infrastructure as Code

---

**EC2 = virtual servers you control.**  
**AWS handles the hardware. You handle everything above it.**
