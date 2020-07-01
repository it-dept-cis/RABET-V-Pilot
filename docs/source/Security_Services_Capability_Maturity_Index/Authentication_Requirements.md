# Authentication Requirements

## Maturity Level 1

### Default passwords are not used or are automatically changed as part of set up  

Before deploying any new asset or instances, change all default passwords to have strong values consistent with policy.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.2

### Authentication is applied consistently through the application

Users are authenticated consistently through the application using an authentication service, with variations for different user types being permitted.  

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.1

### Encrypt or Hash All Authentication Credentials

Ensure that local accounts and accounts with third parties use this approach to store your credentials. This will limit the impact of a third-party provider breach from impacting the election technology.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.4

### Customer admins have access to an inventory of their users

Maintain an inventory of all accounts organized by authentication system. Maintain an up-to-date list of accounts for each system and tie each account to an individual person wherever possible. Having this ability in the platform helps organizations manage their users.

Applies to: Web Components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.6

### Allow Password Policy Customization

Allow customers to configure and enforce a strong password policy according to best practices - A password policy should be created and implemented so that passwords meet specific strength criteria.

Applies to: All Components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.3

### Implement Protections Against Brute Force Attacks

Account lockout needs to be implemented to guard against brute forcing attacks against both the authentication and password reset functionality. After several tries on a specific user account, the account should be locked for a period of time or until unlocked by an administrative action or use of a separate authenticator controlled by the user. Additionally, it is best to continue the same failure message indicating that the credentials are incorrect or the account is locked to prevent an attacker from harvesting usernames.

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.4

### Provide Options for Multifactor Authentication

Allow users to protect their accounts with multifactor authentication. Allow users to choose the authenticator that works best for them, subject to meeting security requirements. Where possible, allow the issuance of multiple authenticators so that multiple combinations can still meet an MFA requirement and be used in the reissuance of lost or stolen authenticators.

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.8

## Maturity Level 2

### Develop a Strong Password Reset System

The Password Reset systems will leverage access to email or other known authenticators, such as confirming possession of a hardware token or a mobile device. Email alone should be augmented by security questions.  When you do ask questions for password resetting, base them on questions that are both hard to guess, hard to brute force, and are not available through social media or previous data breaches. Additionally, any password reset option must not reveal whether an account is valid, preventing username harvesting.

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.2

### Black list commonly used passwords

As part of the set up for credentials they are run against a list of commonly used passwords to ensure that users are not using passwords that are easily guessable.

Applies to: Web components

Method: Re-interpretation

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.4

### Require Multifactor Authentication for All Administrative Access

Use MFA via encrypted channels for all administrative account access.

>Election technology administrative accounts have tremendous capabilities to do harm if taken over through a social engineering or other attack. Protecting them with MFA is extremely important.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.5

### Ensure Authentication is centrally managed

Configure access for all accounts through as few centralized points of authentication as possible, including network, security, and cloud systems.

>This makes it easier to ensure all users are being properly authenticated with the appropriate level of scrutiny and can centralize authentication logging as well.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.2

### Authentication visibility

Provide customers with visibility on user logins including the time and IP address of the login.

Applies to: All components

Method: New

## Maturity Level 3

### Enable the integration with organization authentication systems

By enabling customers to integrate their authentication system, such as Oauth and SAML, with the platform it makes it easier for them manage their users and ensure that users are maintained throughout the user life cycle.

Applies to: Web components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.2

### Provide capability to identify unassociated accounts

Provide the ability for customer admins to identify and disable any account that cannot be associated with a business process or business owner.

>Try to document relevant business processes and owners to make auditing and maintaining accounts easier.

Applies to: Web components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.8

### Automatically disable dormant accounts

Automatically disable dormant accounts after a set period of inactivity.

>This is especially helpful for critical components of the election technology and assist with the manual accounts audits that should be done on a periodic basis.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.9

### Ensure Temporary Accounts Have An Expiration Date

Ensure that all temporary accounts have an expiration date that is monitored and enforced.

>This best practice should be applied to contractor accounts and accounts that are meant to be temporary, such as election-specific accounts. It is OK for service accounts and employee accounts to not have an expiration date. Treat users as temporary whenever there is uncertainty

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.10

### Require Multi-Factor Authentication

Require MFA for all user accounts, on all systems, whether managed on-site or by a third-party provider.

>This is one of the best protections against social engineering attacks.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.3

### Provide the ability for customer admins to revoke access

Establish and follow an automated process for revoking system access by disabling accounts immediately upon termination or change of responsibilities of an employee or contractor.

>Employee new hire, termination, promotion, and demotion checklists should include the steps to setting user permissions commensurate with the employee's job responsibilities, or lack thereof. This should apply to employees and contractors.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.7
