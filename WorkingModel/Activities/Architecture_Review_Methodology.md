# Architecture Review Methodology

The RABET-V Architecture Review is designed to evaluate the solution's architectural support for the 10 (RABET-V security services)[]. This evaluation produces an architectural maturity score for each security service and identifies the components which provide the security service. This score does not measure how well the product achieves the security service (i.e. its capability level), just how mature the architecture is that supports the current capability level. The Product Security Capability Maturity level is a separate metric determined in the Security Claims Review and Verification Activities and it indicates how well the product provides the security services. 

The Architecture Maturity scores and component mappings are used to help assess the risk that changes to the product will negatively effect the security services. These are used in the Testing Rules Determination Activity to identify how to test the product changes. The higher the maturity scores, the less testing required to validate the security capability scores.

## Inputs

The Technology Provider will supply architecture diagrams, architecture descriptions, software source code, and access to a functioning version of the solution. The architecture review will use the source code and functioning solution to validate or complete missing pieces from the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the [Provider Submission](ProviderSubmission.md) activity.

## Outputs

### 1. Security Service Component Mapping

For each security service, the Architecture Review will identify the product components at the system and software levels which *PROVIDE* and *CONFIGURE* the security service and those components which *USE* the component that provides the security service. The components which *PROVIDE* and/or *CONFIGURE* the security service are referred to as 1st Degree components. The ones which use the 1st Degree components are referred to as 2nd Degree components. This mapping of components is referred to as the Security Services Architecture.

### 2. Security Service Architectural Maturity Scores

Based on the maturity scoring rubric, the architecture will be assigned a score for each security service which corresponds to how well it supports that security service.

## Concepts

The following are key concepts used in the RABET-V Architecture Review process.

### System and Software Architecture Levels

The RABET-V Architecture Review considers the system and the software architecture. We define the system architecture as [John TBD]. We define the software architecture as [John TBD].

### Components

The architecture review deconstructs the product solution into components. A component may be a small module with a few lines of code or a larger executable with many lines of code. The goal is to identify the smallest logical unit possible in order to limit the retesting of parts which are not materially involved in providing the security service. For more mature architectures, these will be small, centralized components. For less mature architectures, these will be larger and many in nature.

Here are the guidelines for deconstructing a product solution into components which will be used to build the Security Services Architecture. This guidance is different for 3rd party components and internally developed components.

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

RABET-V Architecture Review will not further deconstruct these elements of the solution. The assumption of the above rule is that any change to these components will be treated a change to the entire component and the version number and change list will describe the entire component.

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

### 1. Documentation Verification

[Internal Notes: Refer to somewhere where we list the documentation that would be ideal. We should develop an example or two of a Security Services Architecture diagram
Validate important architecture aspects via inspection of system, code]

### 2. Component Identification

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

#### 2.1 System Architecture Components Decomposition

#### 2.2 Software Architecture Components Decomposition


### 3. Security Service Component Mapping

* Identification of components which are significant to the security services of the system
* Identification of 3rd party components which are significant to the security and/or usability assurances of the system, and how likely changes to these components are to affect the security and/or usability assurances of the system


#### 3.1 Map 1st Degree Components

Based on the components identified, this step will map the components to the security services starting with the 1st degree components. A 1st degree component is one that *PROVIDES* or *CONFIGURES* a security service.
For each 1st degree component, we need to identify interfaces and dependencies the component has on other components. These will be represented by *DEPENDS ON* relationships with the 1st degree 
* Identify the dependencies of the critical, security service providing modules

##### 3.2 Map 2nd Degree Components

Identify the interface the 2nd degree component uses.

#### 4. Assess Architectural Maturity of Security Services

### 4. Assess Architectural Maturity of Security Services

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

### Provider Component(s) Design

#### Maturity Level 1

[Vetted almost seems like a process oriented criteria. I would use trustworthy or something more quantifiable.]

##### Benefit

The security service is being provided through well-vetted components.

##### Question

- Who wrote or provides the components?
- Was it written in house?
- Was it provided by a reputable third party?

##### Quality criteria

The component is written by a reputable third party. Use of an in-house security service must be justified.

##### Answers

- Component not vetted
- Yes, written in house
- Yes, written by third party

#### Level 2

##### Benefit

A single security service of a given type is used within the subsystem.

##### Quality criteria

There is a minimal number of components which provide the security service. This is ideally one component per technical stack or subsystem. Use of multiple components providing the same security service must be justified. This should not be construed to discourage defense-in-depth approaches. Two security services that provide different mitigations to the same threat are acceptable. For example, a security service may provide input sanitization to defend against SQL injection. Another may provide query parameterization to defend against the same.

##### Question

- What is the minimum number of components required based on the architecture of the system?
- Are there more components being used than necessary? By a lot? By a little? Is it justifiable? Is it unnecessarily spread out?

##### Answers

- Multiple security services of the same type are used in a single subsystem
- A single security service is used per type

#### Level 3

##### Benefit

The security service is configured and used consistently throughout the subsystem. There is one component which configures the security service provider.

##### Quality Criteria

Ideally, at most a single component should be responsible for the configuration of the security service. This criteria rewards approaches that centralize the configuration of security services.

##### Question

- What component(s) configure the security service?
- Is the configuration overridden by other components?

##### Answer

- Configured centrally, or zero configuration required
- Mostly configured centrally, with some service details configured at point of use
- Usually or always configured at point of use

#### Level X

There is strong, functional cohesion in the component(s) which provides the security service. It does doing one thing and does it well.

Questions

### Interface and Usage

#### Level 1

Exhibits loose coupling, encapsulation, and information hiding properties to allow the 1st and 2nd degree components to change without having an effect on the other. These segregates design decisions that are most likely to change in order to protect security services from modification if the design decision is changed.

Questions

#### Level 2

There is a simple and stable interface which is not concerned with the other module's internal implementation

Questions

#### Level 3

There is minimal effort to use and verify use of security service. It is easy for the 1st degree component to be used by other components. Its use can be easily validated.



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
