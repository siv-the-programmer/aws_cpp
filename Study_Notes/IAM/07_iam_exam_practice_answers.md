# IAM Practice Questions – Answers

---

## 1. Is IAM a global or regional service?

IAM is a **global service**.

Users, groups, roles, and policies are created at the account level and are not tied to any specific AWS region.

---

## 2. What provides permissions in AWS?

**IAM policies** provide permissions in AWS.

Permissions are defined by policies and attached to users, groups, or roles.

---

## 3. Can a group be assigned access keys?

No.

IAM groups cannot have access keys or credentials.

Only IAM users and roles can have credentials.

---

## 4. What is the recommended way for EC2 to access S3?

The recommended method is to **attach an IAM role to the EC2 instance**.

This provides temporary credentials and avoids storing access keys on the instance.

---

## 5. What happens if a policy explicitly denies an action?

An explicit **Deny always overrides any Allow**.

Even if another policy allows the action, the request will be blocked.

---

## 6. Are roles long-term or temporary credentials?

IAM roles use **temporary credentials**.

The credentials are automatically rotated and expire after a short duration.

---

## 7. Can a user belong to multiple groups?

Yes.

An IAM user can belong to **multiple groups**, and receives the combined permissions of all attached group policies.

---

## 8. Which identity should never be used for daily operations?

The **root user** should never be used for daily operations.

It should only be used for account setup and critical administrative tasks.

---

## 9. What AWS service issues temporary credentials?

**AWS Security Token Service (STS)** issues temporary credentials.

STS is used when assuming IAM roles.

---

## 10. What is the principle of least privilege?

The principle of least privilege means:

Grant only the minimum permissions required to perform a task, and nothing more.

This reduces security risk and limits potential damage from compromised credentials.

---

