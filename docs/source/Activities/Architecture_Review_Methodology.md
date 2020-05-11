## Architecture Review Methodology

![A flow diagram of the Architecture Review Methodology](media/workflow.svg)The RABET-V Architecture Review is designed to evaluate the solution’s architectural support for the [RABET-V security services](../Overview/Security_Services). This evaluation produces an architectural maturity score for each security service and identifies the components which provide the security service. This score does not measure how well the product executes the security service (i.e., its capability level), just how mature the architecture is that supports the security service. The [Security Services Capability Maturity](../Security_Services_Capability_Maturity_Index/README.md) level is a separate metric determined in the [Security Claims Validation](Security_Claims_Validation) and it indicates how well the product provides the security services.

The Architectural Maturity scores and component mappings are used to help assess the risk that changes to the product will negatively impact the security services. These are used in the [Testing Rules Determination Activity](Testing_Rules_Determination) to identify how to test the product changes. The higher the architectural maturity scores, the less testing required to validate the security capability scores.

The Architecture Review is supplied with architecture diagrams, architecture descriptions, and access to a functioning version of the solution. The architecture review will use the functioning solution to validate or fill-in missing pieces from the architecture diagrams and descriptions.

> Software code may be requested in the pilot in order to determine if it significantly improves the reliability of the architecture review.

For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](Provider_Submission.md) activity.

For each security service, the Architecture Review will identify the product components at the system and software levels that *PROVIDE* and *CONFIGURE* the security service and those components that *USE* the component that provides the security service. The components which *PROVIDE* or *CONFIGURE* the security service are referred to as [1st Degree components](../Appendices/RABET-V_Glossary). The ones which use the 1st degree components are referred to as [2nd Degree components](../Appendices/RABET-V_Glossary). The 1st and 2nd degree components together comprise the Security Service Architecture.

This activity will also complete the system, security and software architectural viewpoints. The system level diagram identifies the larger components of the environment used to host and manage the election technology software application(s). The software level diagram identifies the components a layer deeper into the election technology software application(s).

### Inputs

  - Provider Submission

### Outputs

  - SSAM Scores

  - Security Service Architecture

  - List of unmitigated threats (if any)

### Workflow

#### Perform threat analysis

Threat modeling and analysis is used to build the security architecture viewpoint. It also aids in the development of the system and software architecture diagrams.

Threat modeling takes the provider submitted architectural documentation as input. The services provided by the application are enumerated using the threat modeling methodology. The services are then further deconstructed into software functions and the data required to perform those functions. The data flows/functions must be annotated with sensitivity labels (data-critical, data-sensitive) and impact (low, medium, high) which will influence the severity level determination of any identified threat. Automated tooling will perform threat analysis on this system representation.

> RABET-V will evaluate the use the [Microsoft Threat Modeling tool](https://www.microsoft.com/en-us/securityengineering/sdl/threatmodeling) during pilot.

#### Build system architecture diagram

The output of the threat analysis is used to build out a system level architecture diagram. This is done by converting the top-level services (e.g. Web Applications, Virtual Machines) and data stores (e.g. SQL Server, MySQL) into subsystem-level components.

#### Identify required security services

The security services required for a given product will depend on the results of the threat modeling exercise. A subset of security services are selected from the 10 security services identified for RABET-V. This is accomplished by reviewing the results of the threat modeling exercise and identifying the security services that mitigate one or more identified threats.

#### Identify software components

While the threat analysis helps identify the system level components, the software level components must be identified separately. This step will identify significant software architectural components, their boundaries, how they interface, and their dependencies with one another and 3rd party components.

> Automated tools, such as [Lattix](https://www.lattix.com/), will be evaluated in the RABET-V pilot as a way to perform this step.

#### Map components to functions

The threat analysis identifies the software functions that need security services and the previous step identified the software components. This step will map the security services to software components by first identifying which components offer which functionalities. This is currently a manual process but may be assisted with architectural analysis tools.

#### Apply sensitivity labels

Sensitivity labels are applied to parts of the architecture that provide/exchange data-critical or data-sensitive information during the threat analysis step. Using the component to functionality relationships identified in the previous step, we map and apply the sensitivity labels to components in this step. These labels are used to identify gaps in security service protection in a later step.

#### Apply security service labels

In this step, we complete the Security Service Architecture by labeling the system and software components, for each security service, that provide or configure the security service.

#### Perform security service architectural maturity review

Apply the security service architectural maturity rubric and assign a score to each identified security service.

For more information please see [Security Service Architectural Maturity](../Security_Services_Architectural_Maturity_Index/README)

#### Perform security service gap analysis

Analyze the architecture and identify if any sensitive interface(s) are not protected by a security service. This could be due to a missing or incorrectly configured security service.

#### Record unmitigated threats

Record the unmitigated threats in the product.

### Data used in Process

#### Threats

A threat is type of a situation that may lead to one or more related incidents or failures. The threat consists of the existence of zero or more threat actors together with a set of one or more vulnerabilities. Thus, the threat of theft may result in an actual theft (attack), and threats correspond to attacks that are typically classified by attacker motivation (e.g., financial, political) as opposed to technique (e.g., spoofing).

#### Data labels

A sensitivity label applied to data. Two data labels are defined for RABET-V:

1.  Data Criticality - a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “integrity”. This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component’s exposed interfaces.

1.  Data Sensitivity - a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of “confidentiality”. This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component’s exposed interfaces.

For more information, see the related definition for [Data Sensitivity](../Appendices/RABET-V_Glossary.md#Data-Sensitivity)

#### Services

A system level component that provides data processing capabilities.

For more information, see the related definition for [Process](../Appendices/RABET-V_Glossary.md#Process)
