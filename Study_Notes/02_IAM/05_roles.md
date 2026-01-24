# IAM Roles

IAM roles provide temporary access to AWS resources.

Roles do not have long-term credentials.

## When Roles Are Used

- EC2 accessing S3
- Lambda accessing DynamoDB
- ECS accessing CloudWatch
- Cross-account access

## Why Roles Matter

- No hardcoded credentials
- Temporary security tokens
- Automatic credential rotation
- Strong security posture

## Role Components

### Trust Policy
Defines who can assume the role.

### Permission Policy
Defines what actions are allowed.

## Example Trust Policy

```json
{
  "Effect": "Allow",
  "Principal": {
    "Service": "ec2.amazonaws.com"
  },
  "Action": "sts:AssumeRole"
}
```
