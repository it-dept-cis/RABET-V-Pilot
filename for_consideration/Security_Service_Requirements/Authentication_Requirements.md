# Authentication Requirements

## Maturity Level 1
- Default passwords are not used or are automatically changed as part of set up - Before deploying any new asset or instances, change all default passwords to have strong values consistent with policy.

[AMW: The phrase consistent with administrative level accounts seems odd. We could just say strong passwords or according to password policy?] 
[pl:updated]

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.2

- Authentication is applied consistently through the application- Users are authenticated consistently through the application using a centralized authentication service, with variations for different user types being permitted.  

[AMW: Lets make sure we follow this one up on Level 2 or 3 that all authenticate systems apply access control consistently.]

[AMW: is this one really useful? How do we verify this without making them aware of authentication systems we found? No one will fail this one. Perhaps just convert this one to a requirement to apply authentication consistently throughout the application? Variations for different user types is permitted.]

[pl: not feeling super strong about this one and leaning towards dropping it ]

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.1

- Encrypt or Hash All Authentication Credentials - Encrypt or hash with a salt all authentication credentials. Ensure that local accounts and accounts with third parties use this approach to store your credentials. This will limit the impact of a third-party provider breach from impacting the election technology.

[AMW: Do the hashing requirement and the "don't use the same password for 3rd party accounts" appropriate to include together here?] 
[pl: agreed, and trimmed ]

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.4

- Organization admins have access to an inventory of their users - Maintain an inventory of all accounts organized by authentication system. Maintain an up-to-date list of accounts for each system and tie each account to an individual person wherever possible. Having this ability in the platform helps organizations manage their users.

Applies to: Web Components

Method: Derived 

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.6
- Allow customers to customize strong password policy according to best practices - A password policy should be created and implemented so that passwords meet specific strength criteria.

[AMW: Use of the term "organization" to refer to clients, customers, or users is not my favorite. I would pick one of the terms I mentioned or "election jurisdiction" instead of organization.]
[pl: I think customers might be an easy one to use moving forward]

Applies to: All Components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.3
- Implement Protections Against Brute Force Attacks - Account lockout needs to be implemented to guard against brute forcing attacks against both the authentication and password reset functionality. After several tries on a specific user account, the account should be locked for a period of time or until unlocked by an administrative action or use of a separate authenticator controlled by the user. Additionally, it is best to continue the same failure message indicating that the credentials are incorrect or the account is locked to prevent an attacker from harvesting usernames.

[AMW: what about voters or pollworkers? Do we believe they should be locked out? Just a question]
[pl: comes down to the risk posture of the organization. A slow down in logins is pretty harmless from a user persepctive vs complete lock out which is much more stringent or even a captcha.]
Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.4
- Provide Options for Multifactor Authentication - Allow users to protect their accounts with multifactor authentication. Allow users to choose the authenticator that works best for them, subject to meeting security requirements. Where possible, allow the issuance of multiple authenticators so that multiple combinations can still meet an MFA requirement and be used in the reissuance of lost or stolen authenticators.

Applies to: Web Components

Method: Copy

[pl tricky notion here, do we wanat the clients to set their preferences or do we want it on a per user basis?]

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.8



## Maturity Level 2

- Develop a Strong Password Reset System -  Ideally, the Password Reset systems will leverage other known authenticators, such as confirming possession of a hardware token or a mobile device. When you do ask questions for password resetting, base them on questions that are both hard to guess, hard to brute force, and are not available through social media or previous data breaches. Additionally, any password reset option must not reveal whether an account is valid, preventing username harvesting.

[AMW: this one should be reworded to provided less background. Also, what about an email based password reset? Seems like that should be valid but the requirement seems to forget it. ]
[pl:trimmed]

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.2
- Ensure the Use of Dedicated Vendor Administrative Accounts - Ensure that all users with administrative account access use a dedicated or secondary account for elevated activities. This account should only be used for administrative activities and day-to-day activities. 

[AMW: I like it. We can check the accounts to make sure they aren't logging in as other users.]

>Administrator account on election technology endpoints should not be used for anything but administrator level activities and only when necessary.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.3

- Black list commonly used passwords - As part of the set up for credentials they are run against a list of commonly used password to ensure that users are not using passwords that are easily guessable 

Applies to: Web components

Method: Re-interpretation

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.4

- Use Multifactor Authentication for All Administrative Access - Use MFA via encrypted channels for all administrative account access.
>Election technology administrative accounts have tremendous capabilities to do harm if taken over through a social engineering or other attack. Protecting them with MFA is extremely important.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.5
- Ensure Authentication is centrally managed  - Configure access for all accounts through as few centralized points of authentication as possible, including network, security, and cloud systems[I'm somewhat assuming that most platforms will have this capability by default, so it might not be worth mentioning].

[AMW: This language isn't sharp enough. It is either a centralized point of authentication for all users or per user type (i.e. admin, voter, pollworker, etc) or not a requirement. "Few" is going to be hard to enforce.]

[PL:tweaked it is so that all CRUD function are "managed" in a central fashion.]

Applies to: Web components

Method: Copy

>This makes it easier to ensure all users are being properly authenticated with the appropriate level of scrutiny and can centralize authentication logging as well.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.2



## Maturity Level 3

- Enable the integration with organization authentication systems - By enabling customers to integrate their authentication system, such as Oauth and SAML, with the platform it makes it easier for them manage their users and ensure that users are maintained throughout the user life cycle. 

Applies to: Web components

Method: Derived 

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.2

- Provide the ability for customer admins to identify and disable unassociated accounts - Disable any account that cannot be associated with a business process or business owner.
>Try to document relevant business processes and owners to make auditing and maintaining accounts easier.

Applies to: Web components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.8

- Automatically disable dormant accounts - Automatically disable dormant accounts after a set period of inactivity.
>This is especially helpful for critical components of the election technology and assist with the manual accounts audits that should be done on a periodic basis.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.9
- Ensure Temporary Accounts Have An Expiration Date - Ensure that all temporary accounts have an expiration date that is monitored and enforced.
>This best practice should be applied to contractor accounts and accounts that are meant to be temporary, such as election-specific accounts. It is OK for service accounts and employee accounts to not have an expiration date. Treat users as temporary whenever there is uncertainty

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.10
- Require Multi-Factor Authentication - Require MFA for all user accounts, on all systems, whether managed on-site or by a third-party provider.

[AMW: how about voters who access the application once a year? still required?]
[pl: if we just want administrative access, then that's already covered in level 2 and we could drop this one OR we could move the admin MFA to maturity 3]

>This is one of the best protections against social engineering attacks.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.3
- Provide the ability for customer admins to revoke access - Establish and follow an automated process for revoking system access by disabling accounts immediately upon termination or change of responsibilities of an employee or contractor. Disabling those accounts, instead of deleting accounts, allows preservation of audit trails.
>Employee new hire, termination, promotion, and demotion checklists should include the steps to setting user permissions commensurate with the employee's job responsibilities, or lack thereof. This should apply to employees and contractors.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.7





