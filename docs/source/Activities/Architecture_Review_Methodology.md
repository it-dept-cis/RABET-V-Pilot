

# Architecture Review Methodology

![Image of Architecture Review Methodology](Architecture_Review_Methodology_files/_19_0_3_43701b0_1585746146678_950815_14100.svg)


The RABET-V Architecture Review is designed to evaluate the solution’s architectural support for the [RABET-V security control families](../Overview/Security_Control_Family.md). This evaluation produces an architectural maturity score for each security control family and identifies the components which provide each security service. This score does not measure how well the product executes the security service (i.e., its capability level), just how mature the architecture is that supports the security service. The [Security Services Capability Maturity](../Security_Services_Capability_Maturity_Index/README.md) level is a separate metric determined in the [Security Claims Validation](Security_Claims_Validation.md) and it indicates how well the product provides the security services.

The Architectural Maturity scores and component mappings are used to help assess the risk that changes to the product will negatively impact the security services. These are used in the [Testing Rules Determination Activity](Testing_Rules_Determination.md) to identify how to test the product changes. The higher the architectural maturity scores, the less testing required to validate the security capability scores.

The Architecture Review activity is supplied with architecture diagrams, architecture descriptions[, and access to a functioning version of the solution. The architecture review will use the functioning solution to validate or fill-in missing pieces from the architecture diagrams and descriptions.] [JD: how useful is this? We haven't had it so far]

> Code may be requested in the pilot in order to determine if it significantly improves the reliability of the architecture review.

For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](Provider_Submission.md) activity.

For each security service, the Architecture Review will identify the product components at the system and software levels that expose functionality, and the security services that *protect* those functions. 

This activity will also complete the system and software architectural viewpoints. The system level diagram identifies the larger components of the environment used to host and manage the election technology software application(s). The software level diagram identifies the components a layer deeper into the election technology software application(s).























### Inputs

#### Provider Submission

The Technology Provider will supply architecture diagrams, architecture descriptions, software source code, and access to a functioning version of the solution. The architecture review will use the source code and functioning solution to validate or fill-in missing pieces from the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](Provider_Submission.md) activity.
### Outputs

#### Product Security Architecture Maturity Scores

Based on the maturity scoring rubric, the architecture will be assigned a score for each security control family which corresponds to how well it supports the mitigations within that family.
#### Security Service Component Mapping

For each security service, the Architecture Review will identify the product components at the system and software levels which *PROVIDE* and *CONFIGURE* the security service and those components which *USE* the component that provides the security service.
#### Unmitigated threat list

Definition goes here.

### 2 Perform threat analysis


Threat modeling and analysis is used to build the security architecture viewpoint. It also aids in the development of the system and software architecture diagrams. Threat modeling takes the provider submitted architectural documentation as input. The services provided by the application are enumerated using the threat modeling methodology. The services are then further deconstructed into functions and the data required to perform those functions. The data flows/functions must be annotated with sensitivity labels (data-critical, data-sensitive) and  (low, medium, high) which will influence the severity level determination of any identified threat.

RABET-V will evaluate the use the [Microsoft Threat Modeling tool](https://www.microsoft.com/en-us/securityengineering/sdl/threatmodeling) during pilot. 

### 3 Build system architecture


The output of the threat analysis is to built out a system level architecture. [BG Describe here]

### 4 Identify required security services


The security services required for a given product will depend on the results of the threat analysis. A subset of security control families are selected from the 10 security control families identified for RABET-V. This is accomplished by reviewing the results of the threat modeling exercise and identifying the security services that mitigate one or more identified threats.

### 5 Identify software components


While the threat analysis helps identify the system-level components, the software-level components must be identified separately. This step will identify significant software architectural components, their boundaries, how they interface, their dependencies with one another and 3rd party components.

> Automated tools, such as [Lattix](https://www.lattix.com/) and [WhiteSource](https://whitesourcesoftware.com) will be evaluated in the RABET-V pilot as a way to perform this step.

### 6 Identify interfaces


The threat analysis identifies the components that need security services and the previous step identified the software components. This step identifies the interfaces that expose component functionality. These interfaces will be mapped to security services in the subsequent step.

### 8 Identify protected interfaces


For each interface port, identify all the security services that protect it (the security service's point of use). Each point of use will be scored separately.

### 9 Perform security service architectural maturity review


Apply the security service architectural maturity rubric and assign  scores to each identified security service. 

> For more information please see [Security Service Architectural Maturity](../MaturityIndexes/Security_Services_Architectural_Maturity_Index.md)


### 10 Perform security service gap analysis


Analyze the architecture and identify if any sensitive interface(s) are not protected by a security service. This could be due to a missing or incorrectly configured security service.


### 13 Record unmitigated threats


Record the unmitigated threats in the product.

### Data used in Process

#### ![Image of Threats](Architecture_Review_Methodology_files/icon_dataobject_88394540.svg) [![Image of Threat](Architecture_Review_Methodology_files/icon_class_1622863652.svg)] Threats 
A threat is role of a situation that may lead to one or more related incidents or failures.
The threat consists of the existence of zero or more threat actors together with a set of one or more vulnerabilities. Thus, the threat of theft may result in an actual theft (attack), and threats correspond to attacks that are typically classified by attacker motivation (e.g., theft) as opposed to technique (e.g., spoofing). In some books and articles, the different but highly related terms “attack” and “threat” are sometimes confounded by being used as synonyms [Firesmith 03, Tulloch 03].
#### ![Image of Interfaces](Architecture_Review_Methodology_files/icon_dataobject_88394540.svg) [![Image of Process](Architecture_Review_Methodology_files/icon_class_1622863652.svg)] Interfaces 
A discrete piece of functionality provided by the product. Represented as a "process" in Microsoft's Threat Modeling Tool, and a "port" in the UML Component diagram.
> For more information, see the related definition for [Process](../RABET-V_Glossary.md#Process)
#### ![Image of Services](Architecture_Review_Methodology_files/icon_dataobject_88394540.svg) [![Image of Process](Architecture_Review_Methodology_files/icon_class_1622863652.svg)] Services 
A system level component that provides data processing capabilities.
> For more information, see the related definition for [Process](../RABET-V_Glossary.md#Process)
#### ![Image of Required Security Services](Architecture_Review_Methodology_files/icon_dataobject_88394540.svg) [![Image of Security Service](Architecture_Review_Methodology_files/icon_class_1622863652.svg)] Required Security Services 
Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.
#### ![Image of Security Architecture Rubric](Architecture_Review_Methodology_files/icon_dataobject_316093450.svg) Security Architecture Rubric 
#### ![Image of Security Service](Architecture_Review_Methodology_files/icon_dataobject_88394540.svg) [![Image of Security Service](Architecture_Review_Methodology_files/icon_class_1622863652.svg)] Security Service 
Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.
