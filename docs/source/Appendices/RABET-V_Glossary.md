# RABET-V Glossary

### 1st Degree Component

a component that provides or configures one of the 10 [security services](#security-service). Components are determined to be 1st or [2nd degree components](#2nd-Degree-Component) in the Architecture Review.

### 2nd Degree Component

a component that uses one of the components which provide or configure a [security service](#security-service). Components are determined to be 1st or 2nd degree components in the Architecture Review.

### activity

a self-contained aspect of the RABET-V Program. Each activity has a process with inputs, outputs, and a workflow.

### data criticality label

a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “integrity”. This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component’s exposed interfaces.

### data sensitivity label

a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “confidentiality”. This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component’s exposed interfaces.

### functions

a discrete piece of functionality provided by the [product](#product). Represented as a “[process](#process)” in Microsoft’s [Threat](#threat) Modeling Tool, and a “[port](#port)” in the UML Component diagram.

### port

a bundle of interfaces that provides system functionality.

### product

an election technology submitted to RABET-V.

### product revision

a specific version of the [product](#product) submitted to RABET-V.

### RABET-V Administrator 

the organization responsible for overseeing and executing the RABET-V Program. CIS is the administrator for the pilot program.

### RABET-V Iteration

a complete cycle through the RABET-V activities with a unique [product revision](#product-revision). The first iteration is called the Initial Iteration.

### RABET-V Subscriber

a state or local jurisdiction who has requested access to sensitive RABET-V reporting

### Registered Technology Provider

an organization that develops election technology and has met the minimum requirements to become a RABET-V Registered Technology Provider.

### required security services

mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.

### security service

a capability that supports one, or many, of the security goals (NIST definition). Examples of security services are key management, access control, and authentication. RABET-V defines 10 security services which are used to create the [Security Service Capability Maturity (SSCM)](#Security-Service-Capability-Maturity-\(SSCM\)) scores and the [Security Services Architectural Maturity (SSAM)](#Security-Services-Architectural-Maturity-\(SSAM\)) scores.

### Security Service Capability Maturity (SSCM)

a set of maturity scores for each of the ten [security services](#security-service) that is one of the primary metrics reported by RABET-V.

### security service catalog

a set of [security services](#security-service) identified by RABET-V to mitigate [threats](#threat).

### security service label

mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.

### Security Services Architectural Maturity (SSAM)

a maturity score created by the RABET-V Architecture Review activity to indicate how well the [product](#product)’s architecture is defined to provide the [security services](#security-service).

### Security Services Architecture

an architectural view created in the Architecture Review which identifies components and maps them to the 10 [security services](#security-service).

### services

a system level component that provides data processing capabilities.

### Software Development Maturity (SDM)

a maturity score measured by the RABET-V [Process](#process) Review activity to indicate maturity of the provider’s software assurance processes. The RABET-V SDM score is based on the OWASP Software Assurance Maturity Model (SAMM).

### testing rules

a set of rules specific to the technology provider and [product](#product) which determine how changes to that product will be verified during [RABET-V iterations](#RABET-V-Iteration).

### threat

a role of a situation that my lead to one ore more related incidents or failures.
