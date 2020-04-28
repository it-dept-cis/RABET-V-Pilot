# Secret Management Requirements

## Maturity Level 1 
- Don't Hardcode Credentials - Never allow credentials to be stored directly within the application code. While it can be convenient to test the application code with hardcoded credentials during development, this significantly increases risk and should be avoided.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.1
- Store Database Credentials Securely - Modern web applications usually consist of multiple layers. The business logic tier (processing of information) often connects to the data tier (database). Connecting to the database, of course, requires authentication. The authentication credentials in the business logic tier must be stored in a centralized location that is locked down. Scattering credentials throughout the source code is not acceptable. Some development frameworks provide a centralized secure location for storing credentials to the backend database. These encrypted stores should be leveraged when possible.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.6

## Maturity Level 2 
- Set Up Secure Key Management Processes - When keys are stored in your system, they must be properly secured and only accessible to the appropriate staff on a need-to-know basis.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.4
- Securely Exchange Encryption Keys - If encryption keys are exchanged or preset in your application, any key establishment or exchange must be performed over a secure channel.
>

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.7

## Maturity Level 3