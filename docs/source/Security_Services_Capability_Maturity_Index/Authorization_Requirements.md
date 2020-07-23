# Authorization Requirements

## Maturity Level 1

### Platform provides an authorization system

Platform provides an authorization system, such as RBAC, that restricts access to sensitive data and functions - Protect all information stored on systems with file system, network share, claims, application, or database-specific access control lists. These controls will enforce the principle that only authorized individuals should have access to the information based on their need to access the information as a part of their responsibilities.

Applies to: All components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.1

### Applications and Middleware Should Run With Minimal Privileges

If an application becomes compromised, it is important that the application itself and any middleware services be configured to run with minimal privileges. For instance, while the application layer or business layer needs the ability to read and write data to the underlying database, administrative credentials that grant access to other databases or tables should not be provided.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.7

### Apply the Principle of Least Privilege

Provide the customer with the ability to make all access decisions based on the principle of least privilege. Based on permission settings, access should be denied when not explicitly allowed. Additionally, after an account is created, rights must be specifically added to that account to grant access to resources. Where defaults are used, the defaults should be the minimal level of permissions.

Applies to: Web components

Method: Copy
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.1

### Verify object requests

The product must verify during each request for data that the user has authorization to the data object. This prevents authenticated users from accessing data above or outside of their permission set.

Applies to: All components

## Maturity Level 2

### Apply Access Controls Checks Consistently

Always apply the principle of complete mediation, forcing all requests through a common security gatekeeper. This ensures that access control checks are triggered whether or not the user is authenticated.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.2

### Set the Cookie Domain and Path Correctly

The cookie domain and path scope should be set to the most restrictive settings for your application. Any wildcard domain scoped cookie must have a good justification for its existence.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.5.1

## Maturity Level 3

### Don't Use Direct Object References for Access Control Checks

Do not allow direct references to files or parameters that can be manipulated to grant excessive access. Access control decisions must be based on the authenticated user identity and trusted server-side information.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.4

### Enforce Access Control to Data through Automated Tools

Use an automated tool, such as host-based Data Loss Prevention, to enforce access controls to data even when the data is copied off a system.

>This will help ensure sensitive data that is not properly labeled is still protected from leaving its host system.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.9
