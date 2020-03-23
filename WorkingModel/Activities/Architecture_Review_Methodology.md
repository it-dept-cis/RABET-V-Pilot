# Architecture Review Methodology

## Goals

There are many possible ways to perform a product architecture review. In order to constrain the scope and better direct the RABET-V architecture review, we have defined these primary goals.

### *Goal 1: Identify and Classify the Architecture*

The architecture review will identify significant architectural components, their boundaries, how they interface, and their dependencies with one another and 3rd party components.

Accomplishing Goal 1 means the architecture review will perform:

* Identification of components and boundaries
  * Boundaries between 3rd party components and election technology components
  * Boundaries between components of differing sensitivity
  * Trust boundaries
* Labeling of components based on sensitivity
  * Each component is given one or more sensitivity labels according to the labeling scheme defined later.  
* Identify the dependencies of the critical, security service providing modules
* Identify the interfaces between the components and how well these interfaces decouple the implementation details of each component

Goal 1 Outputs will include details about:

* Components - what function does the component serve, how critical is the function, how critical is the data it uses
* Boundaries - where is the logical divide between this component and another, how well-defined is the boundary, is it a trust boundary
* Interfaces - how do the components exchange data and control
* Dependencies - which components depend on each other, which dependencies are third parties

### *Goal 2: Develop Assertions from Architecture*

The architecture review will assess the architectural design to develop reliable assertions which will be used to determine the testing rules.

Assertions will cover findings such as:

* Identification of components which are significant to the security assurances of the system
* Identification of 3rd party components which are significant to the security assurances of the system, and how likely changes to these components are to affect the security assurances of the system
* Identification of components whose internal implementations can change without posing a significant risk to security
* Identification of components which are designed to change and the risk of the likely changes to security

## Sensitivity Labels

Sensitivity labels are applied to components of the system architecture and used to designate the importance of that component for supporting security services for election operations. The relevant security services are robustness, resiliency, confidentiality, integrity, and availability. Well-designed information systems will have modules and layers which will allow labels to precisely identify the most important components. This system understanding should be integrated into an understanding of the essential functions of the election system as a whole, so the aspects of the information system that directly support the essential election functions are clear. The sensitivity of system components is then used to prioritize their testing. If the architecture is poorly designed, there will be fewer distinguishable components and the precision of testing will be less than desirable. Well-designed architectures will allow fine-tuned labeling with a small amount of highly sensitive components.  

### Example Labels

1. Election Operations Criticality - a label indicating how important this component is for election operations. This may be thought of as an label of "availability". This is measured by the impact of the component ceasing to function.

2. Data Criticality - a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of "integrity". This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component's exposed interfaces.

3. Data Sensitivity - a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of "confidentiality". This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component's exposed interfaces.

## What are Components

We intentionally use a generic term, component, in our description of the Architecture Review. This allows for flexibility when developing findings but in order to bring some consistency and predictability, but we have defined some conventions for how components are identified.

### Third Party

When considering parts of the overall solution which are outside of the software application, each unique version of the following will be considered individual components of the system:

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

### Internal

When considering parts that are inside the software application(s), the following may be considered individual components of the system based on how the software is constructed:

* Program Executable
* Program Library (e.g. DLL)
* Namespace
* Class
* API
* Service

## Assessing the Architecture

Goal 2 asked the architecture reviewer to assess the architecture and develop assertions. To do this, we identify a non-inclusive list of questions to ask about the architecture:

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

### Example Assertions

The output of the Architecture Review is a set of assertions based on the architecture of the solution. These should be statements which are true based on the architecture which is changed less often than individual elements of the solution.

#### Positive

1. Input sanitization to protect against XSS is done uniformly across the solution using the .NET Framework. Therefore, changes to the API or Controllers components will pose no risk to the XSS protections.
2. The public facing results portal uses a database account with read-only access and thus changes to the results portal pose low risk to the integrity of the database. This assumes the database is properly patched.
3. All file imports inherit from a singular file import class which enforces input sanitization and restrictions on the types of files to be stored and processed. Adding new file imports which inherit from this base class pose little risk to file injection attacks.
4. The public facing results portal is hosting using Azure App Service which is supporting through on constantly patched Windows 10 operating system. Underlying patches to this infrastructure pose little risk to the reliability and availability of the system and help ensure its security claims are valid.
5. A SQL data access framework called Entity Framework is used to make all data access calls to the database. This framework uniformly enforces SQL injections projections. Therefore, changes to the API and Controllers pose little risk to the SQL injection protections. This assertion assumes Entity Framework is used for every database call.

#### Negative

1. There is no SQL data access middleware used to make database calls that enforces SQL injection protections. SQL calls are custom built for every application. This means we can't ensure future changes will not pose unique SQL injection risks.  

## Process Inputs

The Technology Provider will supply architecture diagrams, architecture descriptions, software source code, and access to a functioning version of the solution. The architecture review will use the source code and functioning solution to validate or complete missing pieces from the the architecture diagrams and descriptions. For more information about what is expected for the architecture diagrams and description, see the Provider Submission activity.

## Process

1. Review provider given architecture diagrams
2. Validate important architecture aspects via inspection of system, code
3. Identify the critical, security providing code and the modules it is contained in (e.g. access control, data sanitization, input validation, data integrity, etc)
4. Identify interfaces and dependencies of the critical, security providing modules
5. Identify the critical data and the modules which handle the data (and their permissions)
6. Identify the 3rd party services or modules which are trusted
7. Assign labels of criticality to modules, interfaces, 3rd parties, and data
8. Assign labels to trust boundaries (if any)
9. ....

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
