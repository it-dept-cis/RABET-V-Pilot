# Architecture Review Methodology

The RABET-V Architecture Review is designed to evaluate the solution’s architectural support for the [RABET-V security control families](/Overview/Security_Control_Family.md). This evaluation produces an architectural maturity score for each security control family and identifies the components that provide each {term}`security service`. This score does not measure how well the {term}`product` executes the security service (i.e., its capability level), just how mature the architecture is that supports the security service. The [Security Services Capability Maturity](/Security_Services_Capability_Maturity_Index/README.md) level is a separate metric determined in the [Security Claims Validation](/Activities/Security_Claims_Validation.md) that indicates how well the product provides the security services.

The Architectural Maturity scores and component mappings are used to help assess the risk that changes to the product will negatively impact the security services. These are used in the [Testing Rules Determination Activity](/Activities/Testing_Rules_Determination.md) to identify how to test the product changes. Higher architectural maturity scores, in conjunction with process maturity scores; may indicate the need for less testing required to validate that changes have not created increased risk in the product.

The Architecture Review activity is supplied with architecture diagrams, architecture descriptions, and interview sessions to confirm the architectural details and threat model of the product.

For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](/Activities/RTP_Submission.md) activity.

The Architecture Review will identify the product components at the system and software levels that expose functionality, and the security services that *protect* those functions.

This activity will also complete the system and software architectural viewpoints. The system level diagram identifies the larger components of the environment used to host and manage the software application(s). The software level diagrams identify the components a layer deeper into the software application(s).

## Inputs

### RTP Submission

The Technology Provider will supply architecture diagrams, architecture descriptions, and access to a functioning version of the solution. The Technology Provider process their source code through designated SBOM and software architecture analysis tools (currently [Mend](https://www.mend.io/) and [Lattix](https://www.lattix.com/)). The architecture review will use the architecture tools and functioning solution to validate or fill-in missing pieces from the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](/Activities/RTP_Submission.md) activity.

### Required Security Control Families

The Ten [Security Control Families](/Overview/Security_Control_Family.md) provide guidance as to the needed controls to help protect the product and related data.

### Security Architecture Rubric

The rubric was created to help score the product architecture in the categories of Reliability, Manageability and Consistency, Maintainability (Modularity and Isolation), and Depth of control coverage (i.e., defense-in-depth)

## Outputs

### Product Security Architecture Maturity Workbook

These scores will be included in an architecture maturity workbook that will contain an executive summary tab, threat model results, and architecture scoring.

#### Product Security Architecture Maturity Scores

Based on the maturity scoring rubric, the architecture will be assigned scores at various levels for each security control family which corresponds to how well it supports the mitigations within that family. These scores are calculated at five layers, starting at the most detailed level of security service implementation per component or interface and rolling up to result in a master architecture score.

![Diagram of Hierarchy of Architecture Scoring](media/RABET-V_Architecture_Scoring.svg)

#### List of issues or concerns

Included in the workbook will be a list of threat modeling findings and any additional issues or concerns from the more detailed review of the software level architecture.

### Software Architecture Report

The Architecture Review will identify the components of the system and how the security services are used in relation to those components.

:::{figure-md} perform-architecture-review-process
:class: process-model-imgs

![Perform architecture review process model](https://app-us.signavio.com/p/model/e48646e1b67a475f8034a987705280da/png?inline&authkey=fa5a8736f5b82de163588c8383998e9983ba84dd9dce98265abf36b4984582)

A {term}`BPMN` process model of the architecture review process
:::

**Tasks**

**Perform Threat Modeling**

Threat modeling takes the provider submitted architectural
documentation as input along with interview sessions with individuals
that possess knowledge about the system and software architecture. The
security control families provided by the application are enumerated
using the threat modeling methodology.

Outputs:

- SAMM Presentation
- Security Service Listing
- System Level Scores
- Threat Model

**Bill of Material Analysis**

Analyze the third party libraries used by the product, including
licenses, maintainers, and known vulnerabilities.

Outputs:

- Reliability Scores
- Software BOM

**Perform Software Architecture Analysis**

Analyze the software architecture using tools and interviews.

Inputs:  Software BOM

Outputs:  Software Level Scores

**Perform Depth Scoring**

Outputs:  Depth Score

**Build architectural model**

Create an architectural model containing the components, trust
boundaries, and interfaces.

Inputs:

- Reliability Scores
- Security Service
- Software BOM
- Software Level Scores
- System Level Scores

Outputs:

- Architecture Review Report
- Point of Use Score

**Generate Scoring Spreadsheets**

Inputs:

- Depth Score
- Point of Use Score

Outputs:  Consolidated Architecture Scores
