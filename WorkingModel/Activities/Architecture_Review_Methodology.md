

# Architecture Review Methodology

![Image of Architecture Review Methodology](Architecture_Review_Methodology_files/_19_0_3_43701b0_1585746146678_950815_14100.svg)

The RABET-V Architecture Review is designed to evaluate the solution's architectural support for the 10 (RABET-V security services)[]. This evaluation produces an architectural maturity score for each security service and identifies the components which provide the security service. This score does not measure how well the product achieves the security service (i.e. its capability level), just how mature the architecture is that supports the current capability level. The Product Security Capability Maturity level is a separate metric determined in the Security Claims Review and Verification Activities and it indicates how well the product provides the security services.

The Architecture Maturity scores and component mappings are used to help assess the risk that changes to the product will negatively effect the security services. These are used in the Testing Rules Determination Activity to identify how to test the product changes. The higher the maturity scores, the less testing required to validate the security capability scores.


























### Inputs

#### Provider Submission

The Technology Provider will supply architecture diagrams, architecture descriptions, software source code, and access to a functioning version of the solution. The architecture review will use the source code and functioning solution to validate or complete missing pieces from the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](Provider_Submission.md) activity.
### Outputs

#### Product Security Architecture Maturity Scores

Based on the maturity scoring rubric, the architecture will be assigned a score for each security service which corresponds to how well it supports that security service.
#### Security Service Component Mapping

For each security service, the Architecture Review will identify the product components at the system and software levels which *PROVIDE* and *CONFIGURE* the security service and those components which *USE* the component that provides the security service. The components which *PROVIDE* and/or *CONFIGURE* the security service are referred to as 1st Degree components. The ones which use the 1st Degree components are referred to as 2nd Degree components. This mapping of components is referred to as the Security Services Architecture.

### P2.2 Review provider given architecture documentation

The registered technology provider will provide documentation of the product's architecture. Use of other submitted artifacts, such as source code or a working system will be used as necessary to validate the documentation and complete the architecture review.

### P2.3 Perform threat analysis

Threat modeling and analysis is used to build the security architecture viewpoint. It also aids in the development of the system and software architecture viewpoints. Threat modeling takes the provider submitted architectural documentation as input. The services provided by the application are enumerated using the threat modeling methodology. The services are then further deconstructed into functions and the data required to perform those functions. The data flows/functions must be annotated with sensitivity labels (data-critical, data-sensitive) and  (low, medium, high) which will influence the severity level determination of any threat.


### P2.4 Build system architecture

The output of the threat analysis is to build out a system level architecture. This is done by converting the top level services (e.g. Web Applications, Virtual Machines) and data stores (e.g. SQL Server, MySQL) into subsystem-level components.

### P2.5 Identify required security services

The security services required for a given product will depend on the results of the threat modeling exercise. Security services are chosen from a predefined security service catalog.

### P2.6 Identify software components

The architecture review will identify significant architectural components, their boundaries, how they interface, and their dependencies with one another and 3rd party components.

Component identification will perform:

- Identification of components and boundaries
  - Boundaries between 3rd party components and election technology components
  - Boundaries between components of differing sensitivity
  - Trust boundaries

Outputs will include:

- Components - what function does the component serve, how critical is the function, how critical is the data it uses
- Boundaries - where is the logical divide between this component and another, how well-defined is the boundary, is it a trust boundary
- Dependencies - which components depend on each other, which dependencies are third parties

### P2.7 Convert functions to ports

The functions identified during threat modeling will be converted to ports (bundles of interfaces that provide system functionality). Any security services required to mitigate a threat to the port should be listed as a required interface.

### P2.8 Apply sensitivity labels

Sensitivity labels are applied to interfaces that provide exchange data-critical or data-sensitive information. This identification is done during the threat modeling exercise. These labels are mapped to the interfaces that expose the data of a component.

### P2.9 Apply security service labels

Components of the architecture that provide security services are identified. Additionally, components that configure or provide security services are labeled. Ports that depend on a security service are also identified.

### P2.10 Perform security service architectural maturity review

Apply the security service architectural maturity rubric and assign a score to each identified security service. 

> For more information please see [Security Service Architectural Maturity](../MaturityIndexes/Security_Services_Architectural_Maturity_Index.md)


### P2.11 Perform security service gap analysis

Analyze the architecture and identify if any sensitive interface(s) are not protected by a security service. This could be due to a missing or incorrectly configured security service.


### P2.14 Record unmitigated threats

Record the unmitigated threats in the product.

### Data used in Process

#### ![Image of Threats](Architecture_Review_Methodology_files/icon_dataobject_1304218151.svg) [![Image of Threat](Architecture_Review_Methodology_files/icon_class_1862347028.svg)] Threats 
A threat is role of a situation that may lead to one or more related incidents or failures.
The threat consists of the existence of zero or more threat actors together with a set of one or more vulnerabilities. Thus, the threat of theft may result in an actual theft (attack), and threats correspond to attacks that are typically classified by attacker motivation (e.g., theft) as opposed to technique (e.g., spoofing). In some books and articles, the different but highly related terms "attack" and "threat" are sometimes confounded by being used as synonyms [Firesmith 03, Tulloch 03].
#### ![Image of Provider Submission](Architecture_Review_Methodology_files/icon_datainput_1699839074.svg) [![Image of Provider Submission](Architecture_Review_Methodology_files/icon_class_1862347028.svg)] Provider Submission 
The Technology Provider will supply architecture diagrams, architecture descriptions, software source code, and access to a functioning version of the solution. The architecture review will use the source code and functioning solution to validate or complete missing pieces from the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](Provider_Submission.md) activity.
#### ![Image of Security Service Catalog](Architecture_Review_Methodology_files/icon_dataobject_265530045.svg) [![Image of Security Service](Architecture_Review_Methodology_files/icon_class_677103671.svg)] Security Service Catalog 
A set of security services identified by RABET-V to mitigate threats.
#### ![Image of Required Security Services](Architecture_Review_Methodology_files/icon_dataobject_1304218151.svg) [![Image of Security Service](Architecture_Review_Methodology_files/icon_class_677103671.svg)] Required Security Services 
Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.
#### ![Image of Functions](Architecture_Review_Methodology_files/icon_dataobject_1304218151.svg) [![Image of Process](Architecture_Review_Methodology_files/icon_class_1862347028.svg)] Functions 
A discrete piece of functionality provided by the product.
#### ![Image of Product Security Architecture Maturity Scores](Architecture_Review_Methodology_files/icon_dataoutput_717768341.svg) [![Image of Product Security Architecture Maturity](Architecture_Review_Methodology_files/icon_class_1862347028.svg)] Product Security Architecture Maturity Scores 
Based on the maturity scoring rubric, the architecture will be assigned a score for each security service which corresponds to how well it supports that security service.
#### ![Image of Data labels](Architecture_Review_Methodology_files/icon_dataobject_1304218151.svg) [![Image of Data Sensitivity](Architecture_Review_Methodology_files/icon_class_1862347028.svg)] Data labels 
A sensitivity label applied to data. Two data labels are defined for RABET-V:

1. Data Criticality - a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of "integrity". This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component's exposed interfaces.

2. Data Sensitivity - a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of "confidentiality". This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component's exposed interfaces.

#### ![Image of Services](Architecture_Review_Methodology_files/icon_dataobject_1304218151.svg) [![Image of Process](Architecture_Review_Methodology_files/icon_class_1862347028.svg)] Services 
A system level component that provides data processing capabilities.
#### ![Image of Security Architecture Rubric](Architecture_Review_Methodology_files/icon_dataobject_265530045.svg) Security Architecture Rubric 
#### ![Image of Security Service](Architecture_Review_Methodology_files/icon_dataobject_1304218151.svg) [![Image of Security Service](Architecture_Review_Methodology_files/icon_class_677103671.svg)] Security Service 
Mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.
#### ![Image of Security Service Component Mapping](Architecture_Review_Methodology_files/icon_dataoutput_1803687631.svg) Security Service Component Mapping 
For each security service, the Architecture Review will identify the product components at the system and software levels which *PROVIDE* and *CONFIGURE* the security service and those components which *USE* the component that provides the security service. The components which *PROVIDE* and/or *CONFIGURE* the security service are referred to as 1st Degree components. The ones which use the 1st Degree components are referred to as 2nd Degree components. This mapping of components is referred to as the Security Services Architecture.
