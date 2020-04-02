# Architecture Review Methodology

The RABET-V Architecture Review is designed to evaluate the solution's architectural support for 10 security services (link to page where these are defined). This evaluation produces an architectural maturity score for each security service and identifies the components which provide the security service. This score does not measure the well the product achieves the security service, just how mature the architecture is that supports the current capability level. The Product Security Capability Maturity level is a separate metric determined in the Security Claims Review and Verification Activities and it indicates how well the product provides the security services. 

The Architecture Maturity scores and component mappings are used to help assess the risk that changes to the product will negatively effect the security services. These are used in the Testing Rules Determination Activity to identify how to test the product changes. The higher the maturity scores, the less testing required to validate the security capability scores. 

## Outputs

#### 1. Security Service Component Mapping

For each security service, the Architecture Review will identify the product components at the system and software levels which *PROVIDE* and *CONFIGURE* the security service and those components which *USE* the component that provides the security service. The components which *PROVIDE* and/or *CONFIGURE* the security service are referred to as 1st Degree components. The ones which use the 1st Degree components are referred to as 2nd Degree components.  

#### 2. Security Service Architectural Maturity Scores

<<<<<<< HEAD
Based on the maturity scoring rubric, the solution architecture will be assigned a score for each security service which corresponds to how well the architecture supports that security service.
=======
* Identification of components which are significant to the security assurances of the system
* Identification of 3rd party components which are significant to the security assurances of the system, and how likely changes to these components are to affect the security assurances of the system
* Identification of components whose internal implementations can change without posing a significant risk to security
* Identification of components which are designed to change and the risk of the likely changes to security
>>>>>>> b9302c842483128fe20c7d8af0fcec0b54287d8d


## Concepts 

The following are key concepts used in the RABET-V Architecture Review process.

#### System and Software Architecture Levels

The RABET-V Architecture Review considers the system and the software architecture. We define the system architecture as []. We define the software architecture as [].

#### Components 

The architecture review deconstructs the product solution into components. A component may be a small module with a few lines of code or a larger executable with many lines of code. The architecture review will identify as many components as necessary to identify the components which provide or configure a security service or use a component that does. The goal is to identify the smallest logical unit possible in order to limit the retesting of parts which are not materially involved in providing the security service. For more mature architectures, these will be small, centralized components. For less mature architectures, these will be larger and many in nature.

Here are the guidelines for deconstructing a product solution into components which will be used to map a security services architecture (I like this word "Security Services Architecture POV"...might be worth using elsewhere). This guidance is different for 3rd party components and internally developed components. 

### Third Party

When considering parts of the overall solution which are not internally developed, each unique version of the following will be considered individual components of the system:

* Operating System
* Framework
* 3rd party API
* Embedded 3rd Party Library
* Hosting Software/Service (i.e. IIS, Docker, Elastic Beanstalk, Azure App Service, etc.)
* Database (database stored functions and procedures will be treated as a part of the software application)
* File Storage System/Service
* Network Appliance (virtual or real)
* External Device Driver/Firmware

RABET-V Architecture Review will not further decompose these elements of the solution. The assumption of the above rule is that any change to these components will be treated a change to the entire component and the version number and change list will describe the entire component.

### Internally Developed

When considering parts that are internally developed, the following may be considered individual components of the system based on how the software is constructed:

* Program Executable
* Program Library (e.g. DLL)
* Namespace
* Class
* API
* Service
* Module

[Internal Notes: More is needed here or maybe somewhere else about how these components will be identified. As in, where do we draw the boundaries.]

## Workflow

#### 1. Documentation Verification

Internal Notes: Refer to somewhere where we list the documentation that would be ideal. We should develop an example or two of a Security Services Architecture diagram
Validate important architecture aspects via inspection of system, code

#### 2. Component Identification

The architecture review will identify significant architectural components, their boundaries, how they interface, and their dependencies with one another and 3rd party components.

Component identification will perform:

* Identification of components and boundaries
  * Boundaries between 3rd party components and election technology components
  * Boundaries between components of differing sensitivity
  * Trust boundaries
* Identify the interfaces between the components and how well these interfaces decouple the implementation details of each component

Outputs will include:

* Components - what function does the component serve, how critical is the function, how critical is the data it uses
* Boundaries - where is the logical divide between this component and another, how well-defined is the boundary, is it a trust boundary
* Interfaces - how do the components exchange data and control
* Dependencies - which components depend on each other, which dependencies are third parties


##### 2.1 System Architecture Components Decomposition

##### 2.2 Software Architecture Components Decomposition


#### 3. Security Service Component Mapping

* Identification of components which are significant to the security services of the system
* Identification of 3rd party components which are significant to the security and/or usability assurances of the system, and how likely changes to these components are to affect the security and/or usability assurances of the system


##### 3.1 Map 1st Degree Components

Based on the components identified, this step will map the components to the security services starting with the 1st degree components. A 1st degree component is one that *PROVIDES* or *CONFIGURES* a security service.
For each 1st degree component, we need to identify interfaces and dependencies the component has on other components. These will be represented by *DEPENDS ON* relationships with the 1st degree 
* Identify the dependencies of the critical, security service providing modules

##### 3.2 Map 2nd Degree Components

#### 4. Assess Architectural Maturity of Security Services


Follow the rubric and determine maturity. 


## Architecture Maturity Rubric

### Questions

* Are major building blocks well defined, including their areas of responsibility and their interfaces to other building blocks?
* Are major building blocks properly reused or are they unnecessarily duplicated?
* Which components can change without affecting other components?
* How portable are components in the architecture? Are they likely to break when moved to a different operating system or version of the operating system?
* Are the data, application logic, and user interface separated from each other or intertwined?
* Is the strategy for handling untrusted data and users at trust boundaries well-defined and justified? Are the trust boundaries well-placed?
* Is the architecture designed to accommodate likely changes? Which components are designed to be changed more frequently? Are these components separated and isolated from critical components?
* Is there a specific framework such as J2EE or Microsoft .NET or is there no explicit framework? Is the choice of framework appropriate for the application?
* Does the architecture provide a way to catch and handle error conditions within components and/or globally?
* Have boundaries been created to contain the damaging effect of errors and reduce the amount of code that has to be concerned about error processing?
* Is the user interface modularized so that changes in it won't affect the rest of the program?
* Does the solution use reputable 3rd party components or are the components from less reliable and known 3rd parties?
* Identification of components whose internal implementations can change without posing a significant risk to security and/or usability assurances


### Levels

Each level is defined by the qualities which are true about it. 

#### Level 1 



#### Level 2 

* The security service is provided and configured by no more components than the minimum number necessary
* 2nd Degree components have internal implementations which can change without impacting the 1st degree components

#### Level 3 

* Components which are designed to change are separate from, and interact through a well-defined interface with, the components which provide security service





## Process Inputs

The Technology Provider will supply architecture diagrams, architecture descriptions, software source code, and access to a functioning version of the solution. The architecture review will use the source code and functioning solution to validate or complete missing pieces from the the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the Provider Submission activity.


## Technical Guidance

Technical guidance is intended to help technology providers prepare for the architecture review. These resources are not conclusive but will help ensure the most optimal outcomes.

*Documenting Architecture*
Views and Beyond: The SEI Approach for Architecture Documentation
https://resources.sei.cmu.edu/library/asset-view.cfm?assetID=513862

*Building Secure Architectures"
https://www.owasp.org/images/8/83/Securing_Enterprise_Web_Applications_at_the_Source.pdf

*Code Complete Checklists*
https://ycnotes.com/2016/10/03/code-complete/
https://ycnotes.com/2016/10/04/code-complete-checklists/
