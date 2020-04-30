# Authentication Requirements

## Maturity Level 1
- Change Default Passwords - Before deploying any new asset, change all default passwords to have values consistent with administrative level accounts.
>It is critical that default passwords are changed on all election technology components. Consider changing passwords between elections, especially if the password was shared for any reason.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.2
- Maintain an Inventory of Authentication Systems - Maintain an inventory of each of the organization's authentication systems, including those located on-site or at a remote service provider.
>Make sure you have a full understanding of how all users are authenticated and by what mechanism. It is possible for the same application to have multiple login pages. Make sure you know about these.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.1
- Encrypt or Hash All Authentication Credentials - Encrypt or hash with a salt all authentication credentials.
>Ensure that local accounts and accounts with third parties use this approach to store your credentials, and try not to use the same password for third-party accounts and an election technology account. This will limit the impact of a third-party provider breach from impacting the election technology.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.4
- Maintain an Inventory of Accounts - Maintain an inventory of all accounts organized by authentication system.
>Maintain an up-to-date list of accounts for each system and tie each account to an individual person wherever possible.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.6
- Implement a Strong Password Policy - A password policy should be created and implemented so that passwords meet specific strength criteria.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.3
- Implement Protections Against Brute Force Attacks - Account lockout needs to be implemented to guard against brute forcing attacks against both the authentication and password reset functionality. After several tries on a specific user account, the account should be locked for a period of time or until unlocked by an administrative action or use of a separate authenticator controlled by the user. Additionally, it is best to continue the same failure message indicating that the credentials are incorrect or the account is locked to prevent an attacker from harvesting usernames.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.4
- Provide Options for Multifactor Authentication - Allow users to protect their accounts with multifactor authentication. Allow users to choose the authenticator that works best for them, subject to meeting security requirements. Where possible, allow the issuance of multiple authenticators so that multiple combinations can still meet an MFA requirement and be used in the reissuance of lost or stolen authenticators.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.8



## Maturity Level 2

- Develop a Strong Password Reset System - Password reset systems are often the weakest link in an application. These systems are often based on the user answering personal questions to establish their identity and in turn reset the password. Ideally, such systems will leverage other known authenticators, such as confirming possession of a hardware token or a mobile device. When you do ask questions for password resetting, base them on questions that are both hard to guess, hard to brute force, and are not available through social media or previous data breaches. Additionally, any password reset option must not reveal whether an account is valid, preventing username harvesting.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.2
- Ensure the Use of Dedicated Administrative Accounts - Ensure that all users with administrative account access use a dedicated or secondary account for elevated activities. This account should only be used for administrative activities and day-to-day activities.
>Administrator account on election technology endpoints should not be used for anything but administrator level activities and only when necessary.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.3
- Use Unique Passwords - Administrator accounts must use strong passwords that are unique to that system.
>Election technology system administrators should use passwords that are not used for their personal or non-administrator accounts.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.4
- Use Multifactor Authentication for All Administrative Access - Use MFA via encrypted channels for all administrative account access.
>Election technology administrative accounts have tremendous capabilities to do harm if taken over through a social engineering or other attack. Protecting them with MFA is extremely important.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.5
- Configure Centralized Point of Authentication - Configure access for all accounts through as few centralized points of authentication as possible, including network, security, and cloud systems.
>This makes it easier to ensure all users are being properly authenticated with the appropriate level of scrutiny and can centralize authentication logging as well.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.2



## Maturity Level 3

- Disable Any Unassociated Accounts - Disable any account that cannot be associated with a business process or business owner.
>Try to document relevant business processes and owners to make auditing and maintaining accounts easier.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.8
- Disable Dormant Accounts - Automatically disable dormant accounts after a set period of inactivity.
>This is especially helpful for critical components of the election technology and assist with the manual accounts audits that should be done on a periodic basis.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.9
- Ensure Temporary Accounts Have An Expiration Date - Ensure that all temporary accounts have an expiration date that is monitored and enforced.
>This best practice should be applied to contractor accounts and accounts that are meant to be temporary, such as election-specific accounts. It is OK for service accounts and employee accounts to not have an expiration date. Treat users as temporary whenever there is uncertainty

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.10
- Require Multi-Factor Authentication - Require MFA for all user accounts, on all systems, whether managed on-site or by a third-party provider.
>This is one of the best protections against social engineering attacks.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.3
- Establish Process for Revoking Access - Establish and follow an automated process for revoking system access by disabling accounts immediately upon termination or change of responsibilities of an employee or contractor. Disabling those accounts, instead of deleting accounts, allows preservation of audit trails.
>Employee new hire, termination, promotion, and demotion checklists should include the steps to setting user permissions commensurate with the employee's job responsibilities, or lack thereof. This should apply to employees and contractors.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.7




