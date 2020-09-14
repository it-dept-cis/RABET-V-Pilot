# Data Confidentiality and Integrity Requirements

## Maturity Level 1

### Leverage the Advanced Encryption Standard (AES) to Encrypt Wireless Data

Leverage the Advanced Encryption Standard (AES) to encrypt wireless data in transit.

>Wi-Fi, Bluetooth, and NFC all support encrypted communication. Ensure Wi-Fi uses Wi-Fi Protected Access 2 (WPA2) or better.

Applies to: On-premise

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.7

### Use Only Standardized and Extensively Reviewed Encryption Algorithms

Use only standardized and extensively reviewed encryption algorithms that are validated by trusted third parties, such as NIST.

>Use standard libraries available from reputable sources instead of developing your own cryptographic solutions.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 3.2.15

### Use Valid HTTPS Certificates From a Reputable Certificate Authority

HTTPS certificates should be signed by a reputable certificate authority (CA). The name on the certificate should match the fully qualified domain name (FQDN) of the website. The certificate itself should be valid and not expired.

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.2

### Documentation Clearly Identifies Sensitive Information Processed by the Product

Document all sensitive information stored, processed, or transmitted by the product and network infrastructure.

>Locate all data that has privacy concerns and election operations concerns if its confidentiality or integrity were to be compromised.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.1

### Follow Secure Configuration Guidance for Cloud Storage

Follow guidance from CIS Foundations Benchmarks or other secure configuration guidance to ensure all cloud storage containers with sensitive election data are properly secured.

>CIS Foundations Benchmarks are available for Amazon Web Services, Microsoft Azure, Google Cloud, and Microsoft Office 365.

Applies to: Hosted component

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.3.1

### Encrypt Transmittal of Username and Authentication Credentials

Ensure that all account usernames and authentication credentials are transmitted across networks using encrypted channels.

>This includes network traffic and data moved using removable media.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 5.1.5

### Limit the Use and Storage of Sensitive Data

Product ensures that sensitive data is not being unnecessarily transported or stored. Where possible, use tokenization to reduce data exposure risks.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.1

### Use the Strict-Transport-Security Header

The Strict-Transport-Security header ensures that the browser does not talk to the server over non-TLS. This helps reduce the risk of TLS stripping attacks as implemented by the TLSsniff tool.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.10

### Disable Data Caching Using Cache Control Headers and Autocomplete

Browser data caching should be disabled using the cache control HTTP headers or meta tags within the hypertext markup language (HTML) page. Additionally, sensitive input fields, such as the login form, should have the autocomplete=off setting in the HTML form to instruct the browser not to cache the credentials.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.3

### Updated TLS Configuration on Servers

Weak ciphers must be disabled on all servers. For example, SSL v2, SSL v3, and TLS protocols prior to v1.2 have known weaknesses and are not considered secure. Additionally, disable the NULL, RC4, DES, and MD5 cipher suites. Ensure all key lengths are greater than 128 bits, use secure renegotiation, and disable compression.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.5

### Use TLS Everywhere

TLS should be used whenever data is transferred over a network. TLS must be applied to any authentication pages as well as all pages after the user is authenticated. If sensitive information (e.g., personal information) can be submitted before authentication, those features must also be sent over TLS.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.6

### Disable HTTP access for All TLS Enabled Resources

For all pages requiring protection by TLS, the same URL should not be accessible via the non-TLS channel.

Applies to: Web components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.9

### Don't Disclose Too Much Information in Error Messages

Messages for authentication errors must be clear and, at the same time, must be written so that sensitive information about the system is not disclosed. For example, error messages that reveal that the userid is valid but that the corresponding password is incorrect confirms to an attacker that the account does exist on the system. Instead, provide only a message that indicates that the login failed.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.2.5

### Display Generic Error Messages

Error messages should not reveal details about the internal state of the application. For example, file system path and stack information should not be exposed to the user through error messages.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.6.1

### Store User Passwords Using a Strong, Iterative, Salted Hash

User passwords must be stored using secure hashing techniques with strong algorithms like PBKDF2, bcrypt, or SHA-512. Simply hashing the password a single time does not sufficiently protect the password. Use adaptive hashing (a work factor) combined with a randomly generated salt for each user to make the hash strong. 

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.1.8

## Maturity Level 2

### Encrypt the Hard Drive of All Vendor Issued Devices

Utilize approved whole disk encryption software to encrypt the hard drive of all devices issued by the vendor.

>Determine what sensitive information you will permit on employees' laptops and mobile devices. Ensure the hard drives of laptops and mobile devices are fully encrypted to prevent information from being stolen.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.5

### Encrypt Data on USB Storage Devices

If USB storage devices are required, all data stored on such devices must be encrypted while at rest.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.8

### Encrypt All Sensitive Information in Transit

Encrypt all sensitive information in transit.

>Consider whether the election data's confidentiality is sensitive. If you are unsure, consider it sensitive.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.3

### Encrypt Sensitive Information at Rest

Encrypt all sensitive information at rest.

>Election databases and their backups, for example, should be encrypted to ensure they are protected from manipulation.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.4

### Routinely Audit Cloud Storage Configuration Settings

On a periodic basis, review configuration settings for all cloud storage containers and match effectiveness to the sensitivity of the data being stored in the container.

>Automated routines are available for evaluation against the CIS Foundations Benchmarks. Automated routines may be necessary if you have a lot of containers.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.3.3

### Use Separate Storage Containers for Unique Data Classifications

Don't overload one container with data at various classification levels. Create separate containers with appropriate names and configuration settings for each data classification level.

>Follow your data classification scheme and establish containers based on sensitivity. Also, don't mix production and test data.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.3.4

### Remove or Isolate Sensitive Data or Systems Not Regularly Accessed by the Organization

Remove sensitive data or systems not regularly accessed by the organization from the network.

>These systems should only be used as stand-alone systems (disconnected from the network) by the business unit needing to occasionally use the system or completely virtualized and powered off until needed. In addition, disconnect systems that store or process election data that do not absolutely have to be online. Do not leave USB devices with sensitive information plugged into machines when they are not in use.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.2

### Don't Use Unvalidated Forwards or Redirects

An unvalidated forward can allow an attacker to access private content without authentication. Unvalidated redirects allow an attacker to lure victims into visiting malicious sites. Prevent these from occurring by conducting the appropriate access control checks before sending the user to the given location.

Applies to: Web Components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology A1.4.3

## Maturity Level 3

### Monitor and Block Unauthorized Movement of Sensitive Data

Deploy an automated tool on network perimeters that monitors for unauthorized transfer of sensitive information and blocks such transfers while alerting information security personnel.

>Deploy and configure Data Loss Prevention (DLP) solutions to look for election and voter-related information that should not be leaving your network boundaries.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.3

### Utilize an Active Discovery Tool to Identify Sensitive Data

Utilize an active discovery tool to identify all sensitive information stored, processed, or transmitted by the organization's technology systems, including those located on-site or at a remote service provider, and update the organization's sensitive information inventory.

>This helps an organization find and secure all instances of sensitive election information.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.8

### Digitally Sign Sensitive Information in Transit

Sensitive data should be digitally signed by its originator and verified by all components which read, store, or process the data.

>The integrity of election data must be maintained throughout its lifecycle.

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.2

### Encrypt Data Stored in Cloud Storage Containers

Use application encryption with secret keys only known to the data owner(s) to protect confidential data stored in a cloud storage container.

>This protects the data even in the event of a data breach of the cloud hosting provider or a misconfiguration of the cloud storage container's permissions.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.3.2
