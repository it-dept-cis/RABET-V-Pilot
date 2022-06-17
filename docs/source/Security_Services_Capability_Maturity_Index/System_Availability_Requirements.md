# System Availability Requirements

## Maturity Level 1

### Ensure Regular Automated Backups

Ensure that all system data is automatically backed up on a regular basis.
>Backups of election data should be done on a nightly basis. There may be applications which need to back up data at even higher frequencies during critical election periods.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.4.1

### Backup and Failover capabilities

Ensure application and data storage components have fail over options in the event of a service degradation for primary component.

## Maturity Level 2

### Backup data should be restorable

Verify backup data is restorable by performing a data restoration.

>This is important to do once per election or more frequently for some systems.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.4.3

## Maturity Level 3

### Establish DDoS Mitigation Services With a Third-Party DDoS Mitigation Provider

Obtain third-party DDoS mitigation services.

> A number of DDoS protection services have made their offerings available to election jurisdictions. Whether free or at a cost, these services can be very helpful to protect the most critical internet-connected election functions.

Applies to: Hosted components


> Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.6
