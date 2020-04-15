# RABET-V Working Model
RABET-V is a flexible, risk-based, and cost-effective election system verification process that will expedite verification of election systems while providing assurances of security. reliability, and usability. The RABET-V Pilot Program is designed to evaluate the RABET-V process and the potential of the process to improve the speed, security assurances, and cost-effectiveness of non-voting election technology verification. 
This Working Model describes RABET-V Process in detail. Along with this version of the Working Model, CIS is issuing two companion documents: (1) a Research Plan that describes how CIS intends to iterate and confirm that the framework proposed in this Working Model provides assurances of security, reliability, and usability for non-voting election technology products and (2) the Economic Model for managing RABET-V post pilot.

## Introduction
### Program Goal
The goal is the program is to develop a rapid, reliable, and cost-effective system for verifying the security of non-voting election systems. Verification will provide adequate assurances of security, reliability, usability. Assurances are evidence-based grounds for confidence that the system’s features are effective in their application.
The RABET-V Program is intended to build stakeholder confidence that participating products and organizations have demonstrated capabilities to build, test, monitor, and maintain the reliability, usability, and security of their election technology solution. 

### Program Scope
RABET-V is intended for non-voting election technology systems. An election technology system is an information system that supports an elections administration process. There are voting systems and non-voting systems. A “voting system” is defined in the Help American Vote Act (H.R. 3295, Sec 301) as “(1) the total combination of mechanical, electromechanical, or electronic equipment (including the software, firmware, and documentation required to program, control, and support the equipment) that is used—(A) to define ballots; (B) to cast and count votes;(C) to report or display election results; and (D) to maintain and produce any audit trail information; and (2) the practices and associated documentation used—(A) to identify system components and versions of such components;(B) to test the system during its development and maintenance; (C) to maintain records of system errors and defects; (D) to determine specific system changes to be made to a system after the initial qualification of the system; and (E) to make available any materials to the voter (such as notices, instructions, forms, or paper ballots).” A non-voting system is any other information system used during the election. Examples include voter registration databases, electronic pollbooks, or the websites of government election authorities.

### Definitions
See [RABET-V Glossary](RABET-V_Glossary.md)

## Guiding Framework
This Working Model is one approach to meeting the process described by the Center for Internet Security (CIS) in the [How to Improve Election Technology Verification White Paper ](../Elections_Tech-Ver-White_Paper-2020-0121.pdf).

## Registered Technology Providers
The RABET-V Program is a continuous operation with participating technology providers known as Registered Technology Providers (RTPs). To be a RABET-V Registered Technology Provider, the technology provider must submit a complete RTP request, have at least one product verified by RABET-V, and agree to the RABET-V Program Commitment. All current Registered Technology Providers will be listed on the RABET-V Program Portal. For the Pilot Program, each pilot participant will be considered an RTP. 

### Registered Technology Provider Request Package
Technology providers must submit a completed request package to become an RTP. A complete package will contain the following information: 
* Company Name, Legal Address, and Address(es) of all locations
* Point of Contact
* Website URL
* Company Description

### Program Commitment

Technology providers who wish to remain RABET-V registered technology providers must agree to the RABET-V Program Commitment. The commitment establishes the ethical and responsible behavior expected by all program providers. The program commitment is subject to change. The Commitment includes:
* Accurate representation of the product capabilities and its security provisions to RABET-V reviewers, customers, and other stakeholders
* Continued education on and inclusion of cyber security best practices as an organization
* Continuous product maintenance, including the patching of components within reasonable time frames

## Provider Deregistration and Product Delisting

TBD


## RABET-V Public Portal

### Purposes 
There will be a RABET-V public portal. The public portal serves the following purposes:

- Lists all Registered Technology Providers (RTP)
- List all submitted Products and the product's latest goals, expected usage, and security claims
- Lists all Product Versions submitted by RTPs, the date of submission and date of completion, the outcome of the submission, and the RABET-V report (if one completed)

### RABET-V Subscriber Access vs. Public
Many of RABET-V reports are made public, but some of the sensitive detailed reports or appendices are not made publicly available. They are, however, available to RABET-V Subscribers. A RABET-V subscriber is a Federal, State, or local election authority that has requested access to all RABET-V reports and has agreed to treat the information and sensitive (not to be shared with the public or other organizations).


## Maturity Indexes

RABET-V evaluates the security, reliability, and usability of products and provides a set of maturity scores for each product version. RABET-V provides three maturity indexes:

* [Security Service Capability Maturity (SSCM) Index](./MaturityIndexes/Security_Services_Capability_Maturity_Index.md) - identifies the product's current capability level measured across ten security services.
* [Software Development Maturity (SDM) Index](./MaturityIndexes/Software_Development_Maturity_Index.md) - identifies the maturity of the technology provider's software development processes measured across 15 security practices and 2 usability/accessibility practices.
* [Security Services Architectural Maturity (SSAM) Index](./MaturityIndexes/Security_Services_Architectural_Maturity_Index) - identifies the maturity and reliability of the product architecture to support each of the ten security services. 


## Process Activity Descriptions
The RABET-V Process consist of eight activities, beginning with Product Submission. The process flow will vary for each iteration.  

![RABET-V Process Model](https://github.com/it-dept-cis/RABET-V-Pilot/blob/master/WorkingModel/election_verification_proc_model-2020-0115.png "RABET-V Process Model")

### 1. [Provider Submission](Activities/Provider_Submission.md) 
### 2. [Submission Review Process](Activities/Submission_Review_Process.md)
### 3. [Process Assessment Methodology](Activities/Process_Assessment_Methodology.md)
### 4. [Architecture Review Methodology](Activities/Architecture_Review_Methodology.md)
### 5. [Security Claims Validation](Activities/Security_Claims_Validation.md)
### 6. [Testing Rules Determination](Activities/Testing_Rules_Determination.md)
### 7. [Product Verification Process](Activities/Product_Verification_Process.md)
### 8. [Reporting Process](Activities/Reporting_Process.md).
