## Reporting Process

### Inputs

  - Results from Product Verification activity

### Outputs

  - Decision (see Decision Types)

  - RABET-V Product Report

  - RABET-V Product Public Report

### Workflow

#### Review of Product Verification Results and Determination

An internal review of the Product Verification Results will examine whether the product’s verification met its claims.

The internal review will result in a Verification Status. The possible Verification Statuses are Verified, Conditional Verified, and Returned. These determinations are published in the Public Portal and may be updated if a Verification Status changes, most commonly when a Conditional Verified product has made adjustments that move it to a Verified status.

##### Verified

A Verified status means that the product is likely to perform as described in its Product Goals, and Security Claims in the Expected Usage operating environment.

##### Conditional Verified

A Conditional Verified status means that while the product is likely to perform as described in its Product Goals and Security Claims in the Expected Usage operating environment, the RABET-V process identified at least one non-critical issue or deviation.

With a Conditional Verification, the RTP is expected to remediate the issue and submit for a re-verification. If no other changes are made to the product, the process for re-verifying is considered part of the same submission and, upon review, can result in the Verification Status being changed to Verified.

Issues and deviations are detailed in the Product Report.

##### Returned

A Returned status means that the product does not perform as described in in its Product Goals and Security Claims. It has critical issues or deviations that are unlikely to be addressed through minor fixes. The RABET-V process identified at least one critical issue or deviation, severe enough that additional review will require a new submission.

Issues and deviations are detailed in the Product Report.

#### Product Report Generation

##### Report Template

The RABET-V Results Summary provides scored outcomes for product security capabilities and security architecture maturity and for organizational software development process maturity. For Revision Submissions, it will include any change from the previous submission.

Product Security Capability Maturity: the quality of the product’s capabilities of the system at providing safeguards under each of these security control families:

  - Authentication

  - Authorization

  - Injection Prevention

  - Key/Secret/Credentials Management

  - User Session Management

  - Logging/Alerting

  - Data confidentiality and integrity protection

Product Security Architecture Maturity: the quality and reliability of the product’s architecture to support security services and the likelihood that product changes will impact the Product Security Capability Maturity levels:

  - Authentication

  - Authorization

  - Injection Prevention

  - Key/Secret/Credentials Management

  - User Session Management

  - Logging/Alerting

  - Data confidentiality and integrity protection

Software Development Maturity: the quality of the RTP's processes in each of these areas:

  - Governance

  - Design

  - Implementation

  - Verification

  - Operations

  - Usability

Product (Revision) Summary

  - Details about the product that were submitted including its description, expected usage (i.e. use cases), version number(s), etc. This includes the Change List for Revision Submissions.

Verification Methods

  - Description of how the system was tested to include verification methods used in the testing.

Maturity Trends

  - A description of what caused a change for any product or process maturity level that changed.

Appendices

  - Requirements Scores: a list of all individual requirements and whether the RTP is meeting them

#### Product Public Report Generation

Each completed Verification will have a public report that provides basic information on the verification. This information will include:

  - A reference number for the review
  - The product’s name and version number
  - The RTP’s name
  - The initial Verification Status and date
  - The current Verification Status and date
  - Contact information for the RTP
  - Summary scores
