## Process Assessment

The RABET-V Process Assessment measures the [Software Development Maturity (SDM)](../Software_Development_Maturity_Index/README.md) of the technology provider. It uses the OWASP Software Assurance Maturity Model (SAMM) as the basis for its evaluation. The SAMM  determines a maturity score for the technology provider in 5 areas across 15 principles. The RABET-V Process Assessment extends the SAMM by including principles for usability and accessibility to create the SDM. These maturity scores are used to help determine the types of testing conducted by RABET-V for product revisions.

In addition to providing the maturity scores, the SDM evaluation will determine the reliability of RTP-generated artifacts that can be used by RABET-V. By using RTP-generated artifacts, the RABET-V process will not have to reproduce these artifacts (i.e. test results). OWASP maintains a list of SAMM evaluators. Unless not practical, the SDM evaluation should be performed by one of these evaluators. These evaluators will review documentation and perform interviews with the technology provider in order to complete the evaluation. Evidence of artifacts – such as historical version of reports – will be required.

The OWASP SAMM project makes a toolkit available. This [toolkit](https://github.com/OWASP/samm/tree/master/Supporting%20Resources/v2.0/toolbox) provides an interview option for evaluating the RTP's processes according to SAMM.

### Inputs

  - Process descriptions

  - Interviews with RTP

### Outcomes

  - Software Development Maturity Scores

  - List of software development artifacts usable for verification

### Workflow

#### Review Existing Documentation

The RTP submits existing documentation during the Provider Submission activity. The type of documentation requested includes:

1.  Policy and Compliance documents that are related to or help define efforts related to acquiring, managing, designing, developing, testing, and supporting software at the organization.

1.  Process related documents that help define which processes the RTP follows related to software activities.

1.  A representative sample of artifacts from completed activities related to the above policy and compliance or process related activities.

> For the pilot, the Administrator will work with the RTP on documentation

#### Discussion Sessions

These sessions are for interactive discussions with the different roles supporting the efforts related to the RTP's software development process. The discussions will normally involve two interviewers and will last approximately 60-90 minutes. While sessions are driven by topics found in the SAMM toolkit, they will not be checklist-based, but discussions on how processes and procedure are implemented and conducted throughout the organization. Below are some of the common organizational roles that would be interviewed, however representatives from the appropriate business units are also useful candidates for interviewing:

1.  Application/software security lead or equivalent party with responsibilities for defining and managing the integration of security into software

1.  Business analyst or similar role with responsibilities related to requirements, user stories, etc.

1.  Project manager or similar role with responsibilities for guiding teams through the processes to develop, acquire, and maintain software

1.  Application architect or similar role with responsibilities to help ensure good design and architecture for applications is defined

1.  Developer or similar role that has responsibilities to write code and some testing

1.  Quality assurance/test or similar role that handling the primary testing for software or applications

1.  DevOps engineer or similar role with responsibilities related to build and deployment processes for software

1.  Incident response/support or similar roles with responsibilities for helping support, triage, respond to issues in production systems

#### Determine Artifact Reliability

RABET-V can expedite product verification if certain software development artifacts are found to be reliable. When artifacts are found to be reliable, the RABET-V process may use them instead of reproducing similar tests. However, this does not mean RABET-V must use them. In fact, from time to time, RABET-V may reproduce the results submitted by the RTP in order to validate the artifacts are still reliable.

The Process Assessment is used to help determine if the following artifacts are accurate and consistently available for RABET-V iterations. If the RTP has additional software development artifacts which they believe are reliable and beneficial to streamlining the RABET-V process, they may request those artifacts to be evaluated and the testing rules updated to account for the artifacts.

##### Change List

This is the most important software development artifact used by RABET-V when performing verification of a Product Revision. It is critical that the list is accurate, detailed, and complete. While RTPs can submit manually generated change lists, they may take longer to process than automated change lists built from the central source code repository and reviewed by system architects and product owners.

During the Process Assessment, the method used for building change lists will be discovered and sample change lists will be reviewed for accuracy and completeness. If the change list is determined to be reliable, the RABET-V process will use the RTP's change list and not generate its own. If the change list is not reliable, the RABET-V process will explore other ways to produce an accurate change list—which may take additional time and resources.

##### Automated Configuration Assessments

Security configurations are a major part of ensuring that systems contain properly implementing security controls. Using configuration guidance, such as the CIS Benchmarks, leads to consistent security outcomes. Automated configuration assessment tools, such as the CIS configuration assessment tool (CIS-CAT), can ensure guidance is being followed for every release.

During the Process Assessment, the reviewer will determine if the RTP is subscribed to configuration guidance and if they are using a reliable assessment tool. If so, the results of the assessment tool will be used during RABET-V iterations to verify certain requirements. If this artifact is not present or reliable, the Product Verification activity will have to perform additional testing to verify secure configurations.

##### Automated Vulnerability Assessments

Automated vulnerability assessments check system components for known vulnerabilities. These assessments primarily check third party components for known vulnerable versions of software. RTPs that are regularly performing automated vulnerability scans on the product networks and software will have their results used during the Product Verification activity in lieu of RABET-V reviewer performing new scans. During the Process Assessment, reviewers will investigate the scope, frequency, and tooling used by the technology provider to determine if there is sufficient coverage and accuracy.

##### Automated Unit Testing

Automated unit testing is a way to regression test large and complex applications efficiently. It takes significant investment on the part of the RTP to build test suites that are robust and accurate. For RTPs that have invested in this capability, the results of their internally testing can be used to offset of the RABET-V verification. The Process Assessment will look at the coverage and depth of the current automated testing routines, as well as the RTP’s commitment to maintaining its test suites.

##### 3rd Party Security Analysis

RABET-V strongly encourages RTPs to receive regular, in-depth security audits on their systems. For example, there are audits that focus on hosting security and application security. These audits, if performed against a reliable standard and performed recently, can be used in RABET-V in lieu of repeating similar evaluations.

#### Analysis and Reporting

Analysis of the provided documentation (if any) along with the captured session notes will be used to complete a SDM assessment for the organization. At the conclusion of the analysis, the following artifacts will be delivered as part of the work product for the organization:

1.  High level executive summary of the process, findings, SDM maturity score and tailored recommendations

1.  Completed SDM Toolbox

1.  Interview session notes

### Technical Guidance

1.  [OWASP SAMM](https://owaspsamm.org/)

1.  [NIST Mitigating the Risk of Software Vulnerabilities by Adopting a Secure Software Development Framework (SSDF)](https://csrc.nist.gov/publications/detail/white-paper/2019/06/11/mitigating-risk-of-software-vulnerabilities-with-ssdf/draft)

1.  [Managing Security Risks Inherent in the Use of Third-party Components](https://safecode.org/wp-content/uploads/2017/05/SAFECode_TPC_Whitepaper.pdf)
