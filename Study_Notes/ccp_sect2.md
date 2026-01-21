AWS IAM Fundamentals
---

Users, Groups, Roles, and Policies
---

# Overview

This repository documents the core concepts of AWS Identity and Access Management (IAM) as required for the AWS Certified Cloud Practitioner (CCP) exam.

IAM is the foundation of AWS security. It controls who can access AWS resources and what actions they are allowed to perform. A strong understanding of IAM is essential not only for certification, but for real-world cloud engineering and automation.

This documentation covers IAM concepts at both exam level and practical usage level.

What Is IAM
---

# AWS Identity and Access Management (IAM) is a global AWS service that allows you to:

Manage identities (users, groups, roles)

Control authentication and authorization

Define permissions using policies

Secure AWS resources using least privilege access

# IAM answers three fundamental questions:

Who is making the request?

What action are they trying to perform?

Are they allowed to perform it?

# IAM Is a Global Service

IAM is not region-specific.

Users, groups, roles, and policies exist across the entire AWS account.

Permissions apply regardless of AWS region.

IAM Identities
---

IAM identities represent entities that can authenticate and make requests to AWS.

# There are two main identity types:

IAM Users

IAM Roles

# IAM Users

An IAM user represents a person or application that needs long-term access to AWS.

# Characteristics

Created within an AWS account

Has a unique username

Has no permissions by default

Can have console access, programmatic access, or both

# Access Types

AWS Management Console access

Username and password

Programmatic access

Access key ID

Secret access key

Used by AWS CLI, SDKs, and boto3

# Important Notes

IAM users are global

Each user should represent one individual or application

Credentials should never be shared

Root user should not be used for daily operations

# IAM Groups

An IAM group is a logical container for IAM users.

Groups exist to simplify permission management.

# Key Properties

Groups cannot log in

Groups cannot have access keys

Groups only hold permissions

Users inherit permissions from group policies

# Benefits

Centralized permission management

Easier onboarding and offboarding

Reduced risk of misconfigured access

# Example

A group named Developers may have:

AmazonEC2ReadOnlyAccess

AmazonS3ReadOnlyAccess

Any user added to the group automatically receives these permissions.

Users can belong to multiple groups.


# IAM Policies

Policies define permissions in AWS.

# A policy specifies:

Which actions are allowed or denied

Which resources those actions apply to

Optional conditions under which access is granted

Without a policy, an identity has no access.

Policy Structure
---

IAM policies are written in JSON format and consist of statements.

# Example:
```
{
  "Effect": "Allow",
  "Action": "s3:GetObject",
  "Resource": "arn:aws:s3:::example-bucket/*"
}
```
Policy Elements
---

# Effect

Allow

Deny

# Action

AWS API operations
Examples:

s3:PutObject

ec2:StartInstances

iam:CreateUser

# Resource

The AWS resource the action applies to

# Condition (optional)

IP address

MFA requirement

Time-based access

Region restrictions

Types of IAM Policies

---

# AWS Managed Policies

Created and maintained by AWS

Common use cases

Example: AmazonS3ReadOnlyAccess

# Customer Managed Policies

Created by the account owner

Reusable across identities

Recommended for production use

# Inline Policies

Embedded directly into a single user, group, or role

Not reusable

Generally discouraged

# IAM Roles

IAM roles provide temporary credentials to trusted entities.

Roles do not have long-term access keys or passwords.

# When Roles Are Used

EC2 accessing S3

Lambda accessing DynamoDB

ECS accessing CloudWatch

AWS services communicating with other AWS services

Cross-account access

# Why Roles Are Important

Using access keys inside services is insecure.

Roles eliminate the need to store credentials by providing:

Temporary credentials

Automatic rotation

Short-lived access tokens

Role Components
---

# Trust Policy

Defines who can assume the role

# Permissions Policy

Defines what the role is allowed to do

# Example Trust Policy
```
{
  "Effect": "Allow",
  "Principal": {
    "Service": "ec2.amazonaws.com"
  },
  "Action": "sts:AssumeRole"
}
```
This allows EC2 instances to assume the role.

---

# IAM Best Practices

Follow the principle of least privilege

Use roles instead of long-term access keys

Avoid using the root user

Enable MFA on all users

Use groups for permission management

Rotate credentials regularly

Use customer-managed policies for clarity and reuse

---

# IAM Relationship Model
```
User
 └── Group
      └── Policy

AWS Service
 └── Role
      └── Policy
```

Policies always define permissions.

---

# Exam-Relevant Summary

IAM controls authentication and authorization

IAM is a global service

Users represent people or applications

Groups organize users

Policies define permissions

Roles provide temporary credentials

AWS services use roles, not access keys

Least privilege is always recommended

# Repository Purpose

This repository serves as:

Structured study notes for AWS Cloud Practitioner

Documentation reference for IAM fundamentals

Foundation for future AWS automation projects

Preparation for Python and boto3-based IAM scripting