# Data Integrity Requirements

## Maturity Level 1

### Ensure Regular Automated Backups

Ensure that all system data is automatically backed up on a regular basis.
>Backups of election data should be done on a nightly basis. There may be applications which need to back up data at even higher frequencies during critical election periods.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.4.1

### Use Valid HTTPS Certificates From a Reputable Certificate Authority

HTTPS certificates should be signed by a reputable certificate authority (CA). The name on the certificate should match the fully qualified domain name (FQDN) of the website. The certificate itself should be valid and not expired.

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.2

### Use Tokens to Prevent Forged Requests

In order to prevent Cross-Site Request Forgery (CSRF) attacks, you must embed a random value that is not known to third parties into the HTML form. This CSRF protection token must be unique to each request. This prevents a forged CSRF request from being submitted because the attacker does not know the value of the token.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.8

## Maturity Level 2

### Backup data should be restorable

Verify backup data is restorable by performing a data restoration.

>This is important to do once per election or more frequently for some systems.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.4.3

### After Key Milestones Archive Sensitive Data and Securely Store the Hash

To ensure that the information of the archived information is not altered, create and store the hash of the archive on a separate system.

Apples to: All components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.2

## Maturity Level 3

### Digitally Sign Sensitive Information in Transit

Sensitive data should be digitally signed by its originator and verified by all components which read, store, or process the data.

>The integrity of election data must be maintained throughout its lifecycle. 

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.2
