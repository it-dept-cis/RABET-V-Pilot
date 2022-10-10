# RABET-V Glossary

```{glossary}
---
sorted:
---

1st Degree Component
  A component that provides or configures one of the 10 {term}`security service`s. Components are determined to be 1st or {term}`2nd degree component`s in the Architecture Review.

2nd Degree Component
  A component that uses one of the components which provide or configure a {term}`security service`. Components are determined to be 1st or 2nd degree components in the Architecture Review.

Activity
  A self-contained aspect of the RABET-V Program. Each activity has a process with inputs, outputs, and a workflow.

BPMN
Business Process Model and Notation
  A "graphical notation that depicts the steps in a business process. BPMN depicts the end to end flow of a business process. The notation has been specifically designed to coordinate the sequence of processes and the messages that flow between different process participants in a related set of activities." [^bpmndef]

Data Criticality Label
  A label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “integrity”. This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component’s exposed interfaces.

Data Sensitivity Label
  A label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “confidentiality”. This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component’s exposed interfaces.

Functions
  A discrete piece of functionality provided by the {term}`product`. Represented as a “{term}`port`” in the UML Component diagram.

Port
  A bundle of interfaces that provides system functionality.

Product
  An election technology submitted to RABET-V.

Product Revision
  A specific version of the {term}`product` submitted to RABET-V.

RABET-V Administrator
  The organization responsible for overseeing and executing the RABET-V Program. CIS is the administrator for the pilot program.

RABET-V Iteration
  A complete cycle through the RABET-V activities with a unique {term}`product revision`. The first iteration is called the Initial Iteration.

RABET-V Subscriber
  A state or local jurisdiction who has requested access to sensitive RABET-V reporting

Registered Technology Provider (RTP)
  An organization that develops election technology and has met the minimum requirements to become a RABET-V Registered Technology Provider.

Required Security Services
  Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.

Security Control Family
  A group of security services that supports the security goals. RABET-V defines ten security control families which are used to create the {term}`Security Service Capability Maturity (SSCM)` scores and the {term}`Security Services Architectural Maturity (SSAM)` scores.

Security Service
  A capability that supports one, or many, of the security goals (NIST definition). Multiple security services (or controls) are collected in a {term}`Security Control Family`.

Security Service Capability Maturity (SSCM)
  A set of maturity scores for each of the ten {term}`security service`s that is one of the primary metrics reported by RABET-V.

Security Service Catalog
  A set of {term}`security service`s identified by RABET-V to mitigate {term}`threat`s.

Security Service Label
  Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.

Security Services Architectural Maturity (SSAM)
  A maturity score created by the RABET-V Architecture Review activity to indicate how well the {term}`product’s <product>` architecture is defined to provide the {term}`security services <security service>`.

Security Services Architecture
  An architectural view created in the Architecture Review which identifies components and maps them to the 10 {term}`Security Control Families <Security Control Family>`.

Services
  A system level component that provides data processing capabilities.

Software Development Maturity (SDM)
  A maturity score measured by the [RABET-V Process Review](/Activities/Process_Assessment_Methodology.md) activity to indicate maturity of the provider’s software assurance processes. The RABET-V SDM score is based on the OWASP Software Assurance Maturity Model (SAMM) with enhancements in the areas of usability and accessibility.

Testing rules
  A set of rules specific to the technology provider and {term}`product` which determine how changes to that product will be verified during {term}`RABET-V iterations <RABET-V iteration>`.

Threat
  A role of a situation that my lead to one ore more related incidents or failures.

```
[^bpmndef]: https://www.bpmn.org/