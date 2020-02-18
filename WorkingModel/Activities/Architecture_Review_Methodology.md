# Architecture Review Methodology

## Goals
There are many possible ways to perform an architecture review of a product. In order to constrain the scope and better direct the architecture review for RABET-V, we defined these primary goals for the architecture review.

*Goal 1: Identify and Classify the Architecture* 
The architecture review will identify significant architectural components, their boundaries, how they interface, and their dependencies with one another and 3rd party components. 

Accomplishing Goal 1 means the architecture review will accomplish:
* Identification of Components and Boundaries
** Boundaries between 3rd party components and election technology components
** Boundaries between components of differing senstivity
** Trust boundaries
* Labeling of Components based on Sensitivity
** Each component is given sensitivity labels according to the labeling scheme defined later.
* Component Interfaces and Dependencies
** Identify the dependencies of the critical, security providing modules
** Identify the interfaces between the components and how well-defined these interfaces are to decouple the implementation details of each component

Goal 1 Outputs will include details about:
* Components - what function does the component serve, how critical is the function, how critical is the data it uses
* Boundaries - where is the logical divide between this component and another, how well-defined is the boundary, is it a trust boundary
* Interfaces - how do the components exchange data and control
* Dependencies - which components depend on each other, which dependencies are third parties

*Goal 2: Develop Assertions from Architecture* 
The architecture review will assess the architecture design to develop reliable assertions which will be used to determining the testing rules.

Assertions will cover findings such as:
* Identification of components which are significant to the security and/or usability assurances of the system
* Identification of 3rd party components which are significant to the security and/or usability assurances of the system, and how likely changes to these components are to affect the security and/or usability assurances of the system
* Identification of components whose internal implementations can change without posing a significant risk to security and/or usability assurances
* Identification of components which are designed to change and the risk of the likely changes to security and/or usability assurances 


## Sensitivity Labels 

Sensitivity labels are applied to components of the system architecture and used to designate the importance of that component for supporting security services for the election operations.  The relevant security services are robustness, resiliency, confidentiality, integrity, and availability. Well-designed information systems will have modules and layers which will allow labels to precisely identify the most important components. This system understanding should be integrated into an understanding of the essential functions of the election system as a whole, so the aspects of the information system that directly support the essential election functions are clear. The sensitivity of system components is then used to prioritize testing the components. If the architecture is poorly designed, there will be fewer distinguishable components and the precision of testing will be less than desirable. Well-designed architectures will allow fine-tuned labeling with a small of amount of highly sensitive components.  

1. Election Operations Criticality - a label indicating how important this component is for election operations. This may be thought of as an label of "availability". This is measured by the impact of the component ceasing to function. 
2. Data Criticality - a label indicating the senstivity of the data the component is handling. This is measured by the impact of the data being manipulated to an unknown or incorrect value.
3. Data Sensitivity - a label indicating the senstivity of the data the component is handling. This is measured by the impact of the data being exposed to an unauthorized party. 

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
* Is the user interface modularized so that changes in it won�t affect the rest of the program?


third party
- trusted v non-trusted 3rd parties



## Inputs
make sure there is a design representation that is actually reviewable. That doesn’t mean you need 300 pages with inch-perfect UML specifications and mathematical proofs. But it also doesn’t mean a random bunch of box and line pictures with no description of what those boxes and lines are supposed to represent. Identify the views that you need in order to depict the system qualities that are important. Then use a notation that other people understand. UML, Archimate, or whatever.




## Technical Guidance

As a reviewer you must prepare in advance checklists and scenarios that you want to test for the system qualities that you are interested in.

There are a number of good ideas in https://ycnotes.com/2016/10/03/code-complete/
https://ycnotes.com/2016/10/04/code-complete-checklists/


## Process
TBD
Review provider given architecture diagrams

Validate important architecture aspects via inspection of system, code

Identify the critical, security providing code and the modules it is contained in (e.g. access control, data sanitization, input validation, data integrity, etc)

Identify interfaces and dependencies of the critical, security providing modules

Identify the critical data and the modules which handle the data (and their permissions)

Identify the 3rd party services or modules which are trusted

Assign labels of criticality to modules, interfaces, 3rd parties, and data 

Assign labels to trust boundaries (if any)

