# EC2 Pricing

## How EC2 Pricing Works
Amazon EC2 pricing is based on how long your instance runs and what resources it uses.You pay only for the compute capacity while the instance is running.

Pricing depends on:
Instance type
Region
Operating system
Pricing model
Runtime duration

If an instance is stopped you are not charged for compute time.

## What You Pay For
You pay for:
EC2 compute while running
EBS storage even when stopped
Elastic IP if not attached
Data transfer out of AWS

Compute charges stop when the instance stops.Storage charges do not.

## EC2 Pricing Models

## On-Demand Instances
Pay per second or per hour.
No commitment.
No upfront cost.

Used for:
Short term workloads
Testing and development
Unpredictable traffic

Most flexible but most expensive long term.

## Reserved Instances
Commit to 1 year or 3 years usage.
Large discount compared to on-demand.

Used for:
Steady workloads
Always-on servers
Production systems

You are paying for commitment not usage.

## Savings Plans
Similar to reserved instances but more flexible.
Applies across multiple instance families and regions.

Based on consistent dollar usage per hour.

## Spot Instances
Use unused AWS capacity.
Up to 90 percent cheaper.

AWS can terminate the instance at any time.

Used for:
Batch jobs
Background processing
Fault-tolerant workloads

Not suitable for production systems requiring uptime.

## Free Tier
AWS Free Tier includes:
750 hours per month
t2.micro or t3.micro
Linux or Windows

Applies for the first 12 months of a new AWS account.

## Stopped vs Terminated Instances
Stopped instance:
No compute cost
EBS storage still charged
Can be restarted

Terminated instance:
Instance deleted
Cannot be recovered
EBS may be deleted depending on settings

Stopping saves money.Terminating removes the resource.

## EC2 Billing Example
If an EC2 instance runs for:
10 hours = pay for 10 hours
30 days nonstop = pay for full month
Stopped half the month = pay only for running time

Billing is based on runtime not ownership.

## Regional Pricing
EC2 prices vary by region.
Different AWS regions have different operating costs.

Same instance type can cost more or less depending on region.

## Key Cost Optimization Rules
Stop instances when not in use.
Use t-series for low workloads.
Use reserved instances for long-running servers.
Avoid unused Elastic IPs.
Delete unused EBS volumes.

Most AWS bills come from forgotten running resources.

## CCP Exam Tips
You are billed while the instance is running.
Stopping an instance stops compute charges.
EBS storage continues to cost money.
Spot instances are cheapest but not guaranteed.
Reserved instances require commitment.

If AWS mentions predictable workload the answer is usually reserved instances.

## Summary
EC2 pricing is based on:
Runtime
Instance type
Region
Pricing model

Pricing options:
On-demand for flexibility
Reserved for long-term savings
Savings plans for flexibility with discounts
Spot for maximum cost reduction

You control cost by controlling runtime.
