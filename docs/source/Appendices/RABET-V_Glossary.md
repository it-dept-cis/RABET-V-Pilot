# RABET-V Glossary

### 1st Degree Component

A component that provides or configures one of the 10 [security services](#security-service). Components are determined to be 1st or [2nd degree components](#2nd-Degree-Component) in the Architecture Review.

### 2nd Degree Component

A component that uses one of the components which provide or configure a [security service](#security-service). Components are determined to be 1st or 2nd degree components in the Architecture Review.

### Activity

A self-contained aspect of the RABET-V Program. Each activity has a process with inputs, outputs, and a workflow.

### Data Criticality Label

A label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “integrity”. This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component’s exposed interfaces.

### Data Sensitivity Label

A label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “confidentiality”. This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component’s exposed interfaces.

### Functions

A discrete piece of functionality provided by the [product](#product). Represented as a “[port](#Port)” in the UML Component diagram.

### Port

A bundle of interfaces that provides system functionality.

### Product

An election technology submitted to RABET-V.

### Product Revision

A specific version of the [product](#product) submitted to RABET-V.

### RABET-V Administrator

The organization responsible for overseeing and executing the RABET-V Program. CIS is the administrator for the pilot program.

### RABET-V Iteration

A complete cycle through the RABET-V activities with a unique [product revision](#product-revision). The first iteration is called the Initial Iteration.

### RABET-V Subscriber

A state or local jurisdiction who has requested access to sensitive RABET-V reporting

### Registered Technology Provider

An organization that develops election technology and has met the minimum requirements to become a RABET-V Registered Technology Provider.

### Required Security Services

Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.

### Security Control Family

A group of security services that supports the security goals. RABET-V defines ten security control families which are used to create the [Security Service Capability Maturity (SSCM)](#Security-Service-Capability-Maturity-\(SSCM\)) scores and the [Security Services Architectural Maturity (SSAM)](#Security-Services-Architectural-Maturity-\(SSAM\)) scores.

### Security Service

A capability that supports one, or many, of the security goals (NIST definition). Multiple security services (or controls) are collected in a [Security Control Family] (Security-Control-Family).

### Security Service Capability Maturity (SSCM)

A set of maturity scores for each of the ten [security services](#security-service) that is one of the primary metrics reported by RABET-V.

### Security Service Catalog

A set of [security services](#security-service) identified by RABET-V to mitigate [threats](#threat).

### Security Service Label

Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.

### Security Services Architectural Maturity (SSAM)

A maturity score created by the RABET-V Architecture Review activity to indicate how well the [product](#product)’s architecture is defined to provide the [security services](#security-service).

### Security Services Architecture

An architectural view created in the Architecture Review which identifies components and maps them to the 10 [Security Control Families](#Security-Control-Family).

### Services

A system level component that provides data processing capabilities.

### Software Development Maturity (SDM)

A maturity score measured by the RABET-V [Process](#process) Review activity to indicate maturity of the provider’s software assurance processes. The RABET-V SDM score is based on the OWASP Software Assurance Maturity Model (SAMM) with enhancements in the areas of usability and accessibility.

### Testing rules

A set of rules specific to the technology provider and [product](#product) which determine how changes to that product will be verified during [RABET-V iterations](#RABET-V-Iteration).

### Threat

A role of a situation that my lead to one ore more related incidents or failures.
