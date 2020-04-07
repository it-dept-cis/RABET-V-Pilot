# Process Assessment Methodology

The RABET-V Process Assessment Methodology measures the [Software Development Maturity (SDM)](../MaturityIndexes/Software_Development_Maturity_Index.md) of the technology provider. It uses the OWASP Software Assurance Maturity Model (SAMM) as the basis for its evaluation. This evaluation determines a maturity score for the technology provider in 15 areas. These maturity scores are used to help determine the types of testing conducted by RABET-V for product changes. 
In addition to providing the maturity scores, the SAMM evaluation will determine the reliability of provider-generated artifacts that can be used by RABET-V. By using provider-generated artifacts, the RABET-V process will not have to reproduce these artifacts (i.e. test results). 

## Inputs
* Process descriptions
* Interviews with technology provider


## Outcomes

* OWASP SAMM Maturity Scores 
* List of software development artifacts usable for verification


## Workflow
The OWASP SAMM evaluation will be conducted by a 3rd party evaluator. OWASP maintains a list of SAMM evaluators. Unless not practical, the SAMM evaluation should be performed by one of these evaluators. These evaluators will review documentation and perform interviews with the technology provider in order to complete the evaluation. Evidence of artifacts will be required. 

The OWASP SAMM project makes a toolkit available. This [toolkit ](https://github.com/OWASP/samm/tree/master/Supporting%20Resources/v2.0/toolbox) provides an interview option for evaluating the provider's processes according to SAMM. Based on the answers, the toolkit will provide a maturity score for each Security Practice. 

## Determining Reliable Artifacts

One of the advantages of having higher maturity scores with SAMM is that the provider's processes produce more reliable artifacts which can be used by RABET-V. These artifacts may reduce the assessed risk and/or eliminate the need for the RABET-V process to reproduce these artifacts. The evaluation will determine which of these artifacts are reliable and robust enough to be used by RABET-V.

The following are the artifacts required by certain SAMM maturity levels which may be useful in a RABET-V iteration.

**Governance/Measure and Improve Stream**

Maturity Level 2 and 3 have defined KPIs reflecting application security. The KPIs and the current KPI results can be used by the RABET-V process to assess the security health of the system. For example, one KPI may be the number of reported security incidents and how quickly they were addressed. This information can assist RABET-V evaluators to determine the effectiveness of current security controls and response mechanisms. 

**Policy and Compliance/Policy and Standards Stream**

Maturity level 2 requires completed verification checklists and maturity level 3 requires generation of compliance reports. These checklists and compliance reports can be submitted to RABET-V with the product revision and used by the evaluators. 

**Policy and Compliance/Compliance Management Stream**

Maturity level 2 requiring mapping of external compliance obligations to well-defined set of application requirements. This mapping should be done for the Non-Voting Election Technology Security Best Practices. If done, maturity level 3 requires regularly reporting on compliance metrics. These reports would greatly assist and help expedite the RABET-V process.

**Education and Guidance**

None

**Threat Assessment/Threat Modeling Stream**

All maturity levels require some level of threat modeling. Threat modeling artifacts can prove useful for the initial Architecture Review and Verification activities. Changes to the threat model will also prove useful for subsequent RABET-V iterations.


**Security Requirements/Supplier Security Stream**

Maturity level 1 requires a vendor questionnaire be used to assess the strengths and weakness of suppliers. These questionnaires will be useful for the initial Architecture Review. Updated or new questionnaires will be useful for future RABET-V iterations. 

Maturity level 2 requires measurement of key performance indicators for key vendor security processes. These KPI measurements would be a useful artifact for the RABET-V process.

Maturity level 3 requires verification that solution meets quality and security objectives before every major release. Evidence that this was done, such as a checklist, would be a useful artifact for the RABET-V process.

**Secure Architecture/Architecture Design Stream**

All maturity levels produce artifacts which will be useful during the Architecture Review. The greater the maturity, the more useful the artifact will be to the architecture review. These will assist in expediting the architecture review and ensuring its output is an accurate as possible. 

**Secure Architecture/Technology Management Stream**

Maturity level 1 requires a list of the most important technologies used in the application and their risks. This information will be useful for the initial and subsequent Architecture Reviews. Changes to this list, which must be updated at least annually for maturity level 2, might be useful to help determine when new architecture reviews are necessary. 

**Secure Build/Build Process Stream**

Maturity level 3 requires that the application build fails if it doesn't meet a predefined security baseline. Having a copy of this security baseline and the results of the build process verifying compliance with the security baseline will prove very useful for each RABET-V iteration. Depending on the content of the security baseline, it can greatly streamline the verification process. 

**Secure Architecture/Software Dependencies**

Maturity level 1 requires the documentation of software dependencies at least once in the last 3 months. Providing updated documentation of dependencies can assist with the initial and subsequent RABET-V iterations. 

Maturity level 3 requires the scanning of dependencies using a static analysis tool. This will produce results which will be useful in the RABET-V process. 

**Secure Deployment**

None

**Defect Management/Defect Tracking**

Maturity level 2 requires SLA and tracking of compliance with SLAs. This information can assist the RABET-V process ensure that defects are being properly managed. 

**Defect Management/Metrics and Feedback**

All maturity levels require recorded metrics and analysis. The higher maturity levels ensure these metrics are reliable and acted upon. Providing this data to RABET-V can be helpful depending on which metrics are being tracked and how reliable those metrics are determined to be. 

**Architecture Assessment/Architecture Validation**

The overall software architecture required in maturity level 1 and other information required in maturity levels 2 and 3 will prove useful for the Architecture Review. 

**Architecture Assessment/Architecture Mitigation**

None

**Requirements Testing/Control Verification**

Maturity level 2 requires the capturing of results. The extent of the test suite and results of these tests can be helpful artifacts in the RABET-V process. The more extensive and reliable these tests are, the more than can be used. 

**Requirements Testing/Misuse/Abuse Testing**

None

**Security Testing/Scalable Baseline**

Maturity level 3 requires the tracking and reviewing of security test results. These results can be used by RABET-V to augment or substitute additional testing. 

**Security Testing/Deep Understanding**

Maturity level 2 and 3 require a review of the results. These results can be used by RABET-V to augment or substitute additional testing. 

**Incident Management**

Artifacts resulting from incident detection and response will be useful for RABET-V. This including items like the root cause analysis required by maturity level 3 of the Incident Response stream and others. 

**Environment Management/Configuration Hardening**

Maturity level 3 requires regular conformity checks with the hardening guidance. The results of these checks can be provided to RABET-V to offset the same effort by RABET-V.

**Environment Management/Patching and Updating**

Maturity level 3 requires a list of components and versions. This list should be submitted to the RABET-V iteration a evidence of recent patches. 

**Operational Management/Data Protection**

Maturity Level 3 requires automated monitoring of attempted or actual violations of the data protection policy. Results from this monitoring can be submitted to RABET-V and assist with an assessment of security controls and response. 

**Operational Management/System Decommissioning/ Legacy Management**

None

## Maturity Levels 

The SAMM assessment provides a maturity score for each security practice. These maturity scores provide assistance determining risk of future changes.

In this section, we describe the implication of maturity scores on the RABET-V testing rules and verification. 

### Governance

**Strategy & Metrics**

Want this to be a 1 or higher. Beyond that, it really depends on what the KPIs are that they are tracking. Perhaps we need to give some thought to the types of KPIs we are looking for in order to be able to give relief based on this one. 

**Policy & Compliance**

If they are tracking their compliance with the requirements under test, this one can be very helpful and is really a minimum requirement. 
Level 1 of Policy and Standards is a minimum. Level 2 of Compliance Management is what I would like to be a minimum but not sure our pilot participants will get that far at this point.

**Education & Guidance**



### Design

**Threat Assessment**

**Security Requirements**

**Security Architecture**

### Implementation

**Secure Build**

**Secure Deployment**

**Defect Management**

### Verification

**Architecture Assessment**

**Requirements-driven Testing**

**Security Testing**

### Operations

**Incident Management**

**Environment Management**

**Operational Management**


## Technical Guidance

* [OWASP SAMM](https://owaspsamm.org/)
* [NIST Mitigating the Risk of Software Vulnerabilities by Adopting a Secure Software Development Framework (SSDF)](https://csrc.nist.gov/publications/detail/white-paper/2019/06/11/mitigating-risk-of-software-vulnerabilities-with-ssdf/draft)
* https://safecode.org/wp-content/uploads/2017/05/SAFECode_TPC_Whitepaper.pdf