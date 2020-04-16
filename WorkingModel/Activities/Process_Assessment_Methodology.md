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

The OWASP SAMM project makes a toolkit available. This [toolkit](https://github.com/OWASP/samm/tree/master/Supporting%20Resources/v2.0/toolbox) provides an interview option for evaluating the provider's processes according to SAMM. Based on the answers, the toolkit will provide a maturity score for each Security Practice. 

### Discussion Sessions

These sessions are for interactive discussions with  the different roles supporting the efforts related to software development at an organization. The internviews  will normally involve two interviewers and each will last approximately 60-90 minutes in length. While sessions are driven by topics found in the SAMM toolkit, they will not be checklist-based, but discussions on how processes and procedure are implemented and conducted throughout the organization. Below are some of the common role that would be interviewed, however representatives from the logical business units are also useful candidates for interviewing:

* Application/Software Security lead (or responsible party) with responsibilities for defining and managing the integration of security into software

* Business Analyst or similar role with responsibilities related to requirements, user stories, etc.

* Project Manager or similar role with responsibilities for guiding teams through the processes to develop, acquire, and/or maintain software

* Application Architect or similar role with responsibilities to help ensure good design and architecture for applications is defined

* Developer or similar role that has responsibilities to write code and some testing

* QA/Test or similar role that handling the primary testing for software or applications

* DevOps Eng or similar role with responsibilities related to build and deployment processes for software

* Incident response/Support or similar roles with responsibilities for helping support, triage, respond to issues in production systems

### Analysis and Reporting 

Analysis of the provided documentation (if any) along with the captured session notes will be used to complete a SAMM assessment for the organization. At the conclusion of the analysis, the following artifacts will be delivered as part of the work product for the organization:

* High level executive summary of the process, findings, maturity level score and tailored recommendations in a PowerPoint format

* Completed SAMM Toolbox in Excel format

* Interview session notes in a Word document format

## Determining Reliable Artifacts

One of the advantages of having higher maturity scores with SAMM is that the provider's processes produce more reliable artifacts which can be used by RABET-V. These artifacts may reduce the assessed risk and/or eliminate the need for the RABET-V process to reproduce these artifacts. The evaluation will determine which of these artifacts are reliable and robust enough to be used by RABET-V. 

The following are the artifacts required by certain SAMM maturity levels which may be useful in a RABET-V iteration.

### Governance/Measure and Improve Stream

Maturity Level 2 and 3 have defined KPIs reflecting application security. The KPIs and the current KPI results can be used by the RABET-V process to assess the security health of the system. For example, one KPI may be the number of identified vulnerabilities and how quickly they were addressed. This information can assist RABET-V evaluators to determine the effectiveness of current security controls and response mechanisms.  In addition  SAMM requires the maintenance and documentation of an organization's risk management process, one such artifact that may be of value to the RABET-V evaluators is an updated risk profile that details the outputs of the organization's risk assessment. 

### Policy and Compliance/Policy and Standards Stream

Maturity level 2 requires completed verification checklists and maturity level 3 requires generation of compliance reports. These checklists and compliance reports can be submitted to RABET-V with the product revision and used by the evaluators. 

### Policy and Compliance/Compliance Management Stream

Maturity level 2 requiring mapping of external compliance obligations to well-defined set of application requirements. This mapping should be done for the Non-Voting Election Technology Security Best Practices. If done, maturity level 3 requires regularly reporting on compliance metrics. These reports would greatly assist and help expedite the RABET-V process.

### Education and Guidance

Level 2 and 3 of this stream requires that the organization has established standard and guidelines relating to the Application Security, such documentation could be useful for RABET-V evaluator to determine a base level of organizational maturity. 

### Threat Assessment/Threat Modeling Stream

All maturity levels require some level of threat modeling. Threat modeling artifacts can prove useful for the initial Architecture Review and Verification activities. Changes to the threat model will also prove useful for subsequent RABET-V iterations.

### Security Requirements/Supplier Security Stream

Maturity level 1 requires a vendor questionnaire be used to assess the strengths and weakness of suppliers. These questionnaires will be useful for the initial Architecture Review. Updated or new questionnaires will be useful for future RABET-V iterations. 

Maturity level 2 requires measurement of key performance indicators for key vendor security processes. These KPI measurements would be a useful artifact for the RABET-V process.

Maturity level 3 requires verification that solution meets quality and security objectives before every major release. Evidence that this was done, such as a checklist, would be a useful artifact for the RABET-V process.

All levels of security requirements requires the creation and maintenance of a security requirements for applications. The inclusion of these securtiy requirements and their alignment to the threats and risks identified in the threat modeling and risk assessment section would be useful for the RABET-V assesors to validate the security requirements. 

### Secure Architecture/Architecture Design Stream

All maturity levels produce artifacts which will be useful during the Architecture Review. The greater the maturity, the more useful the artifact will be to the architecture review. These will assist in expediting the architecture review and ensuring its output is an accurate as possible.  

### Secure Architecture/Technology Management Stream

Maturity level 1 requires a list of the most important technologies used in the application and their risks. This information will be useful for the initial and subsequent Architecture Reviews. Changes to this list, which must be updated at least annually for maturity level 2, might be useful to help determine when new architecture reviews are necessary. 

### Secure Build/Build Process Stream

Maturity level 3 requires that the application build fails if it doesn't meet a predefined security baseline. Having a copy of this security baseline and the results of the build process verifying compliance with the security baseline will prove very useful for each RABET-V iteration. Depending on the content of the security baseline, it can greatly streamline the verification process. 

### Secure Build/Software Dependencies

Maturity level 1 requires the documentation of software dependencies at least once in the last 3 months. Providing updated documentation of dependencies can assist with the initial and subsequent RABET-V iterations. 

Maturity level 3 requires the scanning of dependencies using a static analysis tool. This will produce results which will be useful in the RABET-V process.

### Secure Deployment/Deployment

All maturity requires the creation and maintenance of a deployement process, this artifact and it's inclusion of the secure means of handing secrets would be useful for RABET-V assessors. Depending on how the deployment is managed, scripts and associated outputs of the deployment process could be seen as useful artifacts.

### Defect Management/Defect Tracking

Maturity level 2 requires SLA and tracking of compliance with SLAs. This information can assist the RABET-V process ensure that defects are being properly managed. 

### Defect Management/Metrics and Feedback

All maturity levels require recorded metrics and analysis. The higher maturity levels ensure these metrics are reliable and acted upon. Providing this data to RABET-V can be helpful depending on which metrics are being tracked and how reliable those metrics are determined to be. 

### Architecture Assessment/Architecture Validation

The overall software architecture required in maturity level 1 and other information required in maturity levels 2 and 3 will prove useful for the Architecture Review. 

### Architecture Assessment/Architecture Mitigation

None

### Requirements Testing/Control Verification

Maturity level 2 requires the capturing of results. The extent of the test suite and results of these tests can be helpful artifacts in the RABET-V process. The more extensive and reliable these tests are, the more than can be used. 

### Requirements Testing/Misuse/Abuse Testing

Maturity level 2 requires the creation of abuse profiles and personas, such documentation which cold be included as part of the threat modeling documentation would be useful for the RABET-V assessors. 

### Security Testing/Scalable Baseline

Maturity level 3 requires the tracking and reviewing of security test results. These results can be used by RABET-V to augment or substitute additional testing. 

### Security Testing/Deep Understanding

Maturity level 2 and 3 require a review of the results. These results can be used by RABET-V to augment or substitute additional testing. 

### Incident Management

Artifacts resulting from incident detection and response will be useful for RABET-V. This including items like the root cause analysis required by maturity level 3 of the Incident Response stream and others. 

### Environment Management/Configuration Hardening

Maturity level 3 requires regular conformity checks with the hardening guidance. The results of these checks can be provided to RABET-V to offset the same effort by RABET-V.

### Environment Management/Patching and Updating

Maturity level 3 requires a list of components and versions. This list should be submitted to the RABET-V iteration a evidence of recent patches.

### Operational Management/Data Protection

Maturity Level 3 requires automated monitoring of attempted or actual violations of the data protection policy. Results from this monitoring can be submitted to RABET-V and assist with an assessment of security controls and response.

### Operational Management/System Decommissioning/Legacy Management

None

## Maturity Levels 

The SAMM assessment provides a maturity score for each security practice. These maturity scores provide assistance determining risk of future changes.

In this section, we describe the implication of maturity scores on the RABET-V testing rules and verification. 

### Governance

#### Strategy & Metrics

At a base level, the organization should identify the means of measuring the effectiveness of any security program. These indicators may be different based on the organization, but could include Mean Time to Remediation, Flaw Creation Rate, and Portion of Application covered by Automated Security Testing. Level two involves developing a strategy to ensure application security and setting goals for each of the indicators to monitor and track progress.

#### Policy & Compliance

Level one of Policy & Compliance expects that the organization has a common set of policies and standards that govern all aspects of software development. The policies protect the integrity of its computing environment, safety and privacy of the data, and maturity of the software development life-cycles. The standards set requirements for technologies—such as languages and frameworks—used within the organization.

The base level of Compliance Management involves creating a comprehensive list of all compliance requirements and what triggers potentially put an application in scope. One useful artifact is a compliance matrix—aimed at the organizational level rather than the application level—which provides a basic understanding of useful compliance requirements. At level two, each external compliance obligation should be mapped to a well-defined set of application requirements and the organization has procedures in place to verify compliance against the requirements.

#### Education & Guidance

Level one of Education & Guidance requires the creation of a training program that involves various different topics, such as specific application best practices and is incorporated as part of the onboarding process. Higher levels of this practice involves the additional coverage of the training program to other members of the workforce and deeper coverage of the topics associated with SDLC. Having a general education program in place that details who the program applies to and the topics coverd by the program could be considered as a minimum.

### Design

#### Threat Assessment

The practices in this stream focus upon building and maintaining the core risk profiles of the organization and assuring that they're aligned to both the business needs of the organizations and risk the organization faces. Having both the ability to access the final risk registry and threat model methodology used would be beneficial for the assessment and could present a reasonable starting point.

#### Security Requirements

At a base level the organization should have a documented set of security requirements, with higher maturity levels having it in a more standardized notation and including active participation and developmment from the application development team. Having a well documented set of security requirements should be considered a baseline for verification efforts.

#### Security Architecture

The second level of maturity dictates that organizations should have an established list of recommended techologies and a list of resusable security services that are use to support each of the products. These two could be considered useful artifacts for more advanced verification efforts. 

### Implementation

#### Secure Build

At a base level, the organization should have a record of all dependencies used in the production environment. The second level of maturity dictates that this list of dependencies should be assessed as to whether each dependency meets a set of criteria (e.g. no known vulnerabilities, up-to-date version, actively supported and maintained). The third level of maturity is reached with the development of a formalized whitelist of approved dependencies and versions, which is integrated into the build process.

#### Secure Deployment



#### Defect Management

With level one of Defect Management, an organization should establish a single location for tracking defects in an application. The defects should also be clearly defined and may include threat assessments, penetration tests, and output from static and dynamic analysis scanning tools. The organization should also have a rudimentary defect classification system in place to prioritize the handling of defects. At level two, a single severity scheme is in place across the organization and each severity level has clearly defined service-level agreements (SLAs) for resolution.

### Verification

#### Architecture Assessment



#### Requirements-driven Testing

#### Security Testing

### Operations

#### Incident Management

#### Environment Management

#### Operational Management

## Technical Guidance

* [OWASP SAMM](https://owaspsamm.org/)
* [NIST Mitigating the Risk of Software Vulnerabilities by Adopting a Secure Software Development Framework (SSDF)](https://csrc.nist.gov/publications/detail/white-paper/2019/06/11/mitigating-risk-of-software-vulnerabilities-with-ssdf/draft)
* [Managing Security Risks Inherent in the Use of Third-party Components](https://safecode.org/wp-content/uploads/2017/05/SAFECode_TPC_Whitepaper.pdf)
