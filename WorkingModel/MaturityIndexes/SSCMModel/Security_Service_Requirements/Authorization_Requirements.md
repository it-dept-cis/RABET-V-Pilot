# Authorization Requirements

## Maturity Level 1 

- Platform provides an authorization system, such as RBAC, that restricts access to sensitive data and functions - Protect all information stored on systems with file system, network share, claims, application, or database-specific access control lists. These controls will enforce the principle that only authorized individuals should have access to the information based on their need to access the information as a part of their responsibilities.

Applies to: Web components

Method: Derived

>Identify the roles of individuals in managing election data before identifying the minimum privileges necessary for them to do their job. Avoid giving administrative access to more people than necessary, while also not creating single points of failure.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.1

- Applications and Middleware Should Run With Minimal Privileges - If an application becomes compromised, it is important that the application itself and any middleware services be configured to run with minimal privileges. For instance, while the application layer or business layer needs the ability to read and write data to the underlying database, administrative credentials that grant access to other databases or tables should not be provided.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.7
- Apply the Principle of Least Privilege - Make use of a Mandatory Access Control system. All access decisions will be based on the principle of least privilege. If not explicitly allowed, access should be denied. Additionally, after an account is created, rights must be specifically added to that account to grant access to resources.

Applies to: Web components

Method: Copy
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.1


## Maturity Level 2 
- Apply Access Controls Checks Consistently - Always apply the principle of complete mediation, forcing all requests through a common security gatekeeper. This ensures that access control checks are triggered whether or not the user is authenticated.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.2
- Set the Cookie Domain and Path Correctly - The cookie domain and path scope should be set to the most restrictive settings for your application. Any wildcard domain scoped cookie must have a good justification for its existence.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.5.1

## Maturity Level 3 
- Don't Use Direct Object References for Access Control Checks - Do not allow direct references to files or parameters that can be manipulated to grant excessive access. Access control decisions must be based on the authenticated user identity and trusted server-side information.
>

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.4
- Enforce Access Control to Data through Automated Tools - Use an automated tool, such as host-based Data Loss Prevention, to enforce access controls to data even when the data is copied off a system.

Applies to: Web components

Method: Copy

>This will help ensure sensitive data that is not properly labeled is still protected from leaving its host system.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.9
