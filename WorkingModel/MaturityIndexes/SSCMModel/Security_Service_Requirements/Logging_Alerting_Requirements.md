# Logging/Alerting Requirements

## Maturity Level 1 
- Activate Audit Logging - Ensure that local logging has been enabled on all systems and networking devices.
>Components of election technology solutions must utilize local logging capabilities to store system activity.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.3.1
- Ensure Adequate Storage for Logs - Ensure that all systems that store logs have adequate storage space for the logs generated.
>Election technology components should be designed to store audit logs for multiple significant election events without losing any data. Logs should be retained for a minimum of 180 days with the option to archive logs for longer periods of time.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.3.2
- No Unhandled Exceptions - Given the languages and frameworks in use for web application development, never allow an unhandled exception to occur. Error handlers should be configured to handle unexpected errors and gracefully return controlled output to the user.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.2
- Log All Authentication Activities - Log all authentication activities, whether successful or not.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.4
- Log All Privilege Changes - Log all activities or occasions where the user's privilege level changes.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.5
- Do Not Log Inappropriate Data - While logging errors and auditing access is important, sensitive data should never be logged in an unencrypted form. For example, under HIPAA and PCI, it would be a violation to log sensitive data into the log itself unless the log is encrypted on the disk. Additionally, it can create a serious exposure point should the web application itself become compromised.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.8
- Store Logs Securely - Logs should be stored and maintained appropriately to avoid information loss or tampering by an intruder. Log retention should also follow the retention policy set forth by the organization to meet regulatory requirements and provide enough information for forensic and incident response activities.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.9

## Maturity Level 2 
- Centralize Anti-Malware Logging - Send all malware detection events to enterprise anti-malware administration tools and event log servers for analysis and alerting.
>This assist in the early detect of an incident and ensures the proper security personnel are alerted to malware on the network.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.3.4
- Enable DNS Query Logging - Enable Domain Name System (DNS) query logging to detect hostname lookups for known malicious domains.
>This is used to detect attempts to reach known malicious sites from within your network. This will help detect malware and prevent it from communicating with its command and control infrastructure.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.3.5
- Enable Command-Line Audit Logging - Enable command-line audit logging for command shells, such as Microsoft Powershell and Bash.
>A large percentage of malware uses Powershell and Bash. This logging will assist in the detection of malware and a better understanding of its impact.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.3.6
- Log and Alert on Changes to Administrative Group Membership - Configure systems to issue a log entry and alert when an account is added to or removed from any group assigned administrative privileges.
>Changes to election technology administrator accounts must be logged and alerted. Quick notification allows for timely remediation in the event of privilege escalation or other attack.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.8
- Central Log Management - Ensure that appropriate logs are being aggregated to a central log management system for analysis and review.
>Networked election technology solutions should utilize central event logging. Central event logging is extremely beneficial for detecting events and ensuring event logs are properly protected.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.3.5
- Enable Detailed Logging - Enable system logging to include detailed information such as an event source, date, user, timestamp, source addresses, destination addresses, and other useful elements.
>Election technology components – particularly servers and those devices in publicly accessible network interfaces – should capture detailed enough information to fully understand and reconstruct security incidents.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.3.6
- Log User Activity - Logging user activity – login times, page views, data accessed, etc. – can greatly assist with understanding the impact of security incidents involving user accounts. This is especially important for administrators.
>Take care to not log information that would violate voter or ballot privacy.

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.10
- Suppress Framework Generated Errors - Suppress default error messages in development framework or platform and replace them with customized error messages. Framework-generated messages may reveal sensitive information to the user.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.3
- Log Administrative Activities - Log all administrative activities on the application or any of its components.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.6
- Log Access to Sensitive Data - Log all access to sensitive data. This is particularly important for corporations that have to meet regulatory requirements like Health Insurance Portability and Accountability Act (HIPAA), PCI, or Sarbanes-Oxley Act (SOX).
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.7

## Maturity Level 3
- Log and Alert on Unsuccessful Administrative Account Login - Configure systems to issue a log entry and alert on unsuccessful logins to an administrative account.
>This enables election technology administrators to detect attempts to brute force or socially engineer access to administrator accounts.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.9
- Enforce Detail Logging for Access or Changes to Sensitive Data - Enforce detailed audit logging for access to sensitive data or changes to sensitive data using tools such as File Integrity Monitoring or Security Information and Event Monitoring.
>This can help detect a malicious attempt to alter the integrity of the data. Database level logging can be enabled to track all changes to the database.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.10
- Monitor Attempts to Access Deactivated Accounts - Monitor attempts to access deactivated accounts through audit logging.
>This can alert election system administrators to likely malicious behavior.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.12
- Alert on Account Login Behavior Deviation - Alert when users deviate from normal login behavior, such as time-of-day, workstation location, and duration.
>Major commercial systems have the capability to establish an activity baseline based on time of day, IP address, and other data. Where possible, set up alerts to anomalous behavior for early detection of a possible attack.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.13
- Deploy SIEM or Log Analytic Tools - Deploy Security Information and Event Management (SIEM) or log analytic tool for log correlation and analysis.
>Timely and accurate detection of potential security events is critical during peak election periods. A SIEM solution can greatly assist with this.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.3.4
