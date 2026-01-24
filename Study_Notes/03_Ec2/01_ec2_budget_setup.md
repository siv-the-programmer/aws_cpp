# AWS Budget Setup Guide

This document explains how to correctly set up AWS Budgets to prevent unexpected charges and maintain strict cost control.  
Cost management is a core cloud engineering skill, not an optional extra.

---

## What Is AWS Budget

AWS Budgets allows you to set custom cost and usage limits and receive alerts when your spending approaches or exceeds those limits.

AWS does not automatically stop resources when money is spent. Budgets exist to warn you before costs escalate.

---

## Why You Must Configure a Budget Immediately

Without budgets:

- EC2 instances can run indefinitely
- NAT Gateways can generate high hourly costs
- Free Tier limits can be exceeded silently
- Billing surprises appear at month-end

With budgets:

- Monthly spending is visible
- Forecasted costs are tracked
- Alerts are sent before limits are reached
- You stay in control of your AWS account

---

## AWS Budget Types

AWS provides four budget types:

- Cost budget  
  Tracks total AWS spend in dollars.

- Usage budget  
  Tracks service usage such as hours, requests, or storage.

- Reservation budget  
  Tracks Reserved Instance utilization.

- Savings Plans budget  
  Tracks Savings Plan usage.

For beginners and AWS CCP, only the Cost Budget is required.

---

## Recommended Beginner Configuration

- Budget amount: 5 to 10 USD per month
- Budget period: Monthly
- Alerts:
  - 50 percent actual spend
  - 80 percent actual spend
  - 100 percent forecasted spend

This configuration protects your account even when operating outside Free Tier.

---

## Step-by-Step AWS Budget Setup

---

### Step 1: Open Billing Dashboard

Log in to the AWS Console.

Navigate to:

Billing and Cost Management

---

### Step 2: Open Budgets

From the Billing menu:
```

Billing  
→ Budgets  
→ Create budget
```
---

### Step 3: Choose Budget Type
```
Select:

Cost budget

Click Next.
```
---

### Step 4: Configure Budget Details
```

Budget name: monthly-cost-budget

Budget period: Monthly

Budget amount: 10 USD

You may reduce this to 5 USD for maximum safety.
```
---

### Step 5: Budget Scope

```
Use default settings:

- All AWS services
- All regions
- All linked accounts
```
This ensures no resource escapes the budget.

---

### Step 6: Configure Alerts

Create the following alerts.

#### Alert 1: Early Warning

- Threshold type: Actual
- Threshold: 50 percent
- Notification: Email address linked to AWS account

---

#### Alert 2: High Risk Warning

- Threshold type: Actual
- Threshold: 80 percent
- Notification: Email address linked to AWS account

---

#### Alert 3: Critical Limit

- Threshold type: Forecasted
- Threshold: 100 percent
- Notification: Email address linked to AWS account

Forecasted alerts warn you before the limit is actually reached.

---

### Step 7: Create Budget

```
Review all settings.

Click:

Create budget

The budget becomes active immediately.
```
---

## Important Limitations

AWS Budgets:

- Sends alerts only
- Does not stop EC2 instances
- Does not delete resources
- Does not block billing

You must manually stop or automate shutdown of services.

---

## Strongly Recommended Billing Settings

Navigate to:

Billing  
→ Preferences

Enable:

- Receive billing alerts
- Receive Free Tier usage alerts
- Cost anomaly detection notifications

---

## Cost Anomaly Detection Setup

Navigate to:

Billing  
→ Cost Anomaly Detection  
→ Create monitor

Recommended configuration:

- Monitor type: Linked account
- Alert threshold: 1 to 2 USD

This detects unusual spending patterns automatically.

---

## Common High-Cost Services

Services that can generate unexpected charges quickly:

- NAT Gateway
- Application Load Balancer
- EC2 instances
- RDS databases
- Elastic IP addresses not attached
- OpenSearch

Always confirm hourly pricing before launching resources.

---

## Free Tier Safer Services

Lower-risk services include:

- IAM
- S3
- Lambda (low invocation volume)
- DynamoDB Free Tier
- CloudWatch basic monitoring

These are not zero-cost but are easier to control.

---

## Engineering Cost-Control Rules

- Never leave EC2 running unattended
- Terminate test resources immediately
- Avoid NAT Gateway unless required
- Delete unused EBS volumes
- Remove unattached Elastic IPs
- Review billing dashboard weekly
- Prefer serverless services when possible

---

## Automation Direction

Manual monitoring does not scale.

Long-term best practice includes:

- Lambda-based EC2 auto-shutdown
- Python boto3 scripts for cost reporting
- Scheduled cleanup of unused resources
- Automated notifications through email or messaging APIs

Budgets provide visibility.

Automation provides enforcement.

---

## Summary

AWS Budgets is the first layer of financial protection.

You must:

- Define strict monthly limits
- Enable forecast alerts
- Monitor usage regularly
- Automate resource cleanup

Cost awareness is a core AWS engineering skill.

No budget means no control.