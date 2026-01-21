# IAM Groups

IAM groups are containers for IAM users.

Groups simplify permission management by allowing policies to be attached once and inherited by all members.

## Properties

- Groups cannot log in
- Groups cannot have credentials
- Groups only store policies

## Benefits

- Centralized permission control
- Easier onboarding and removal
- Reduced configuration errors

## Example

Group: Developers

Attached policies:
- AmazonEC2ReadOnlyAccess
- AmazonS3ReadOnlyAccess

Any user added to the group receives those permissions.

Users can belong to multiple groups.
