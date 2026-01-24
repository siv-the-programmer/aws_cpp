# IAM Users

An IAM user represents a person or application that requires long-term access to AWS.

## Key Characteristics

- Global identity
- No permissions by default
- Authenticates using credentials
- Permissions assigned via policies

## Access Types

### Console Access
- Username
- Password

### Programmatic Access
- Access key ID
- Secret access key
- Used by CLI and SDKs

## Important Rules

- One user per person or application
- Credentials must never be shared
- Root user should not be used for daily tasks
- Users must have least privilege permissions

## Common Use Cases

- Human administrators
- Developers
- CI/CD pipelines
- Automation scripts
