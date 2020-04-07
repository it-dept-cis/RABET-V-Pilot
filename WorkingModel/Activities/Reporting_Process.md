# Reporting Process


## Inputs

* Results from Product Verification activity

## Outputs

* Decision (see Decision Types)
* RABET-V Product (Revision) Report (see Report Template)

## Workflow


## Decision Types

RABET-V produces a decision based on a current range of acceptable maturity scores. Scores are divided in the green range, yellow range, and red range for each maturity area. Systems with maturity scores in the green ranges receive full approval. Systems with some scores in the yellow range receive provisional approvals. Items with scores in all yellow or red will be rejected. The ranges are published and are subject to change. States may opt to publish their own acceptable scores or score ranges.

### Full Approval

TBD - Mike

When approval is given by the RABET-V reviewers, the provider is permitted to deploy their updates. It does not mean they have to, or that the customer has given them permission to. These deployments may be a website deploy, or a deployment to clients. 

### Provisional Approval

TBD - Mike
What are the rules for provisional approval. how long do they have to correct. what happens if scores don't improve, etc. 


### Rejection
TBD - Mike


## Report Template

Pg 1-2. RABET-V Results Summary (envisioning tables with scores/level listed for each one of the sub bullets with maybe a trend arrow or previous score included too)
Product Security Capability Maturity – measures how capable the system is at providing each of these security services
* Authentication
* Authorization
* Injection Prevention
* Key/Secret/Credentials Management
* User Session Management
* Logging/Alerting
* Data integrity protection
* Data confidentiality protection

Software Assurance Maturity – measures the maturity of the vendors internal processes in these 6 areas
* Governance
* Design
* Implementation
* Verification
* Operations
* Usability

Product Security Architecture Maturity – measures how well the product’s architecture supports these security services and the likelihood that product changes will impact the Product Security Capability Maturity levels
* Authentication
* Authorization
* Injection Prevention
* Key/Secret/Credentials Management
* User Session Management
* Logging/Alerting
* Data integrity protection
* Data confidentiality protection

Pg 3-4. Product (Revision) Summary
Details about the product that was submitted including its description, expected usage (i.e. use cases), version number(s), etc. 
Change list (if revision)

Pg 5. Verification Methods
Description of how the system was tested based on the changes, decision tree, etc. 

Pg 6+. Maturity Trends
For each product security capability or software assurance maturity level which changed, provide an explanation for why it changed.

Appendices
* Requirements Scores – individual requirements and whether the provider is meeting them
* Glossary – or link to our Github glossary

