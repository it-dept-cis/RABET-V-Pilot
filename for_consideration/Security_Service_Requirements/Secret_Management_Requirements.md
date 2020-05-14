# Secret Management Requirements

[AMW: Perhaps we need to consult outside help for these sets of requirements]

## Maturity Level 1

### Don't Hardcode Credentials

Never allow credentials to be stored directly within the application code. While it can be convenient to test the application code with hardcoded credentials during development, this significantly increases risk and should be avoided.

Applies to: All

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.1

### Store Credentials Securely

[what does `locked down` mean?]

Modern web applications usually consist of multiple layers. The business logic tier (processing of information) often connects to the other tiers, such as a database. Connecting to a database, of course, requires authentication. The authentication credentials, if stored, must be stored in a centralized location that is locked down. Scattering credentials throughout the source code is not acceptable. Some development frameworks provide a centralized secure location for storing credentials. These encrypted stores should be leveraged when possible.

Applies to: All

Method: Derived

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.6

### Securely Exchange Encryption Keys

If encryption keys are exchanged or preset in your application, any key establishment or exchange must be performed over a secure channel.

Applies to: All

Method: Derived

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.7

## Maturity Level 2

### Set Up Secure Key Management Processes

[Process-oriented, delete?]
[Could change to say that access to keys are subject to access control?]

When keys are stored in your system, they must be properly secured and only accessible to the appropriate staff on a need-to-know basis.

Applies to: All

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.4

### Use a FIPS 140-2 Validated Modules

Use a cryptographic module that meets or exceeds FIPS 140-2 validation, operating in FIPS mode, for performing cryptographic operations.

> It is only necessary that the software is FIPS 140-2 certified, not the specific hardware.

Applies to: All

Method: Derived

> Reference: NIST Voluntary Voting System Guideline Requirements Version 2.0 (Draft) 13.3-A

## Maturity Level 3

### Use Hardware Security Modules or Key Management Service for keys

Use a Hardware Security Module (HSM) or Key Management Service (KMS) when using cryptographic keys. These products are tamper evident and provide a secure environment for the management and operation of keys.

Applies to: All

Method: New
