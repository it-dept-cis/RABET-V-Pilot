# Provider Submission 

Each RABET-V iteration begins with a product submission.

## Submission Types

The submission package required from a Registered Technology Provider (RTP) will vary based on whether this is the RTP's initial submission of a product revision submission. The initial submission will require the most information in order to establish the product in the RABET-V program. Revision submissions will require varying levels of information based on the changes submitted and how those changes impact current [Testing Rules](../RABET-V_Glossary.md).

### Initial Submission

The Initial Submission is a unique, one-time submission of product information. You can update this information as a part of a product revision too. To construct your Initial Submission package, include the following items in addition to the items requested in the Revision Submission section below.

#### Product Goals

The Product Goals are a one or two paragraph summary of what the product is designed to do. This is a free form description which should clearly state the product goals in a non-technical way. This description will be used by the [Verification Authority](../RABET-V_Glossary.md) in the Submission Review activity to determine if the stated security claims are commensurate with the product goals. For example, if the product goals include managing sensitive voter information, the Verification Authority will expect to see security claims designed to product the sensitive voter information. The product goals will also be published in the [RABET-V Public Portal](../RABET-V_Glossary.md).

#### Expected Usage

The Expected Usage statement should identify the ways in which the product is expected to be used. This is a free form description which will be used along with the Product Goals to evaluate the product's security claims. The Expected Usage will be published along with the Product Goals on the RABET-V Public Portal. One way to communicate the Expected Usage is by providing high-level use cases. Use cases lists the actions or interactions between an actor and a system to achieve a goal. For this submission, the Expected Usage is meant to be more comprehensive and less detailed.

#### Product Security Claims

The Product Security Claims are statements about which security requirements are met by the product. RABET-V security requirements are built from the Security Best Practices for Non-Voting Election Technology. For each implemented requirement, the provider will describe how they implement it. If the provider only implements it on certain components, those should be detailed along with a reason for excluding it from other components. Well-reasoned written arguments for why the implementation decisions were made and how they result in the appropriate level of security for the product are expected. This approach allows for each product to implement a unique approach to the security of their application that is specific to its goals and usage.

#### Process Descriptions

TBD - 

*The lack of process descriptions will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.* 


#### Architecture Documentation and Diagrams

The most up to date documentation is requested. Architecture can be described textually, using diagrams, or a combination of the two. RABET-V expects documentation regarding the architecture at the system as well as the software level. The system architecture should describe deployable subsystems, such as web services, databases, as well as hardware components such as firewalls and tablets. The software architecture should be described in terms of software components.

The term *component* is used generically within RABET-V to describe part of a product. Components can be broken down into subcomponents, as required. The architecture should be deconstructed to the level that exposed functionality (e.g. a particular web service, program API, etc.) can be identified.

RABET-V does not dictate a particular notation for diagrams, however we would prefer if the provider followed our examples, which are based on UML Component Diagrams.

*The lack of architecture documentation and diagrams will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.*

#### Third-Party Component Details

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

*The lack of documented third-party component details will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.* 

### Revision Submissions

A Registered Technology Provider (RTP) can submit a product revision to RABET-V at any time. Fore warning is not necessary but may be helpful. Engaging the [Verification Authority](../RABET-V_Glossary.md) about upcoming changes and consulting the existing Testing Rules (if exist) will help a technology provider better prepare their submission.

Required items include:
* Change list - this must indicate which components have changed and what level of change was made. For product revisions, the list should reference the components identified in the architecture review. 
* Artifacts - this is the artifacts which were identified in the process review. The process review will identify the product development artifacts which can be used during the subsequent verifications. 
* Desired Deployment Date - the date when the product revision would ideally be deployed into a product environment.
* Version numbers - the version number of the current product revision. This must indicate and correspond to code branches and change size (i.e. minor version number changes must correspond to minor changes)

A provider may change any of the Initial Submission items during a Revision Submission by providing updated information and alerting the Verification Authority. 

## Submission

Once the Initial Submission or Revision Submission package is complete, it should be submitted electronically to the RABET-V certifying authority (TBD). For the pilot, this information will be submitted to a secure file upload portal (TBD).
