# IAM Policies

Policies define permissions in AWS.

Without a policy, an identity has no access.

## Policy Structure

Policies are written in JSON and contain one or more statements.

```json
{
  "Effect": "Allow",
  "Action": "s3:GetObject",
  "Resource": "arn:aws:s3:::example-bucket/*"
}
```

# Core Elements

Effect: Allow or Deny

Action: AWS API operation

Resource: Target AWS resource

Condition: Optional restrictions

Policy 
---

# AWS Managed

Maintained by AWS

Ready to use

# Customer Managed

Created by the account owner

Reusable

Recommended

# Inline

Attached to a single identity

Not reusable

Not recommended