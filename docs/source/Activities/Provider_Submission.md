## Provider Submission

The RABET-V process begins with a product submission from an RTP.

### Submission Types

All product submissions are either an Initial Submission or a Revision Submission.

#### Initial Submission

The Initial Submission is a first-time submission of product information. It includes statements about the product and the RTP that will be used throughout the RABET-V process. An Initial Submission is required for each unique product an RTP would market and sell independently to an election jurisdiction.

#### Revision Submission

A Revision Submission is for changes being made to a product that has already been through the RABET-V process. It includes information about changes to the product since the last submission.

An RTP can make a Revision Submission at any time after that product has been verified through an initial RABET-V iteration. It can improve the likelihood of a smooth process by engaging the RABET-V Administrator ahead of the submission about upcoming changes and understanding how any established Testing Rules will be impacted by deviations from the previous version.

A Revision Submission requires only the version change list, artifacts, desired deployment date, and version numbers, as well as any other meaningful changes, such as to the organizational process.

### Submission Items

#### Product Goals

The Product Goals statement is a description of the product’s purpose in non-technical language. It should be brief: a one or two paragraph summary of what the product is designed to do. The RTP can update the Product Goals during any Revision Submission and should always confirm whether there have been any changes.

This description will be used by the RABET-V Administrator in the Submission Review and Security Claims Review activities to determine if the stated security claims align with the product goals. For example, if the Product Goals include managing sensitive voter information, the RABET-V Administrator will expect to see security claims designed to protect sensitive voter information.

The Product Goals will be published in the [RABET-V Public Portal](../Appendices/RABET-V_Glossary.md).

Initial Submission: Always required 

Revision Submission: When changed from last submission 

#### Expected Usage

The Expected Usage statement describes how the provider expects the election office to use the product. While it can communicate this through a number of means, a good approach is through high-level use cases that list the actions and interactions between involved parties and the system to achieve the Product Goals. Usage of the product will be limited to the use cases expressed in the Expected Usage. The RTP can update the Expected Usage during any Revision Submission and should always confirm whether there have been any changes.

This description will be used by the RABET-V Administrator in the Security Claims Review activity to determine if the stated security claims align with the expected usage.

The Expected Usage will be published in the [RABET-V Public Portal](../Appendices/RABET-V_Glossary.md).

Initial Submission: Always required

Revision Submission: When changed from last submission 

#### Product Security Claims 

The Product Security Claims statement is a listing of security requirements met by the product. The security requirements are listed as a part of the Security Service Capability Maturity Model and organized by security control family.

For each requirement, the RTP will describe the implementation approach and whether the requirement is Met, Partially Met, Not Met, or Not Applicable. If the RTP only implements the requirement on certain components, it should provide details and the rationale for excluding it from other components. The RTP should include well-reasoned arguments for  the implementation decisions and how they result in the appropriate level of security for the product. This approach allows each product to implement a unique approach to the security of their application that is specific to its goals and usage.

The RTP can update Security Claims during any Revision Submission and should always confirm whether there have been any changes.

Initial Submission: Always required

Revision Submission: When changed from last submission 

#### Process Descriptions

The Process Descriptions statement is about the RTP's development processes and operating environment. These should cover key aspects of software development as described in the OWASP Software Assurance Maturity Model (SAMM), which is used as the basis for the RABET-V Process Review Activity.

A lack of detail in the Process Description statement will not exclude the RTP from participating in the program, though it may slow the pace of the review.

Initial Submission: Always required

Revision Submission: When changed from last submission 

> The pilot program will work with the provider to create the necessary descriptions.

#### Architecture Documentation and Diagrams

The Architecture Documentation and Diagrams is a set of documents that fully describe the architectural design of the product. The product’s architecture can be described using diagrams, narrative, or, ideally, a combination of the two.

The RTP should submit documentation of the architecture of the system as well as the software level. The system architecture should describe deployable subsystems, such as web services, databases, as well as hardware components such as firewalls and tablets. The software architecture should be described in terms of software components.

The term *component* is used generically within RABET-V to describe part of a product. Components can be broken down into subcomponents, as required. The architecture should be deconstructed to the level that exposed functionality (e.g. a particular web service, program API) can be identified.

RABET-V does not dictate a particular notation for submitted diagrams; however, where possible RTP’s should follow provided examples, which are based on UML Component Diagrams.

Initial Submission: Always required

Revision Submission: When changed from last submission 

> A lack of architecture documentation and diagrams will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.

#### Third-Party Component Details

The Third-party Component Details describe the RTP's approach to managing supply chain risk. This includes whether the organization has selected third-party software components with a history of known vulnerabilities, and how the organization maintains traceability and assurance of third-party and open source software throughout the lifetime of the software.

When considering parts of the overall solution that are not developed internally, each unique version of the following will be considered an individual component of the system:

1.  Operating System

1.  Framework

1.  3rd party API

1.  Embedded 3rd Party Library

1.  Hosting Software/Service (e.g., IIS, Docker, Elastic Beanstalk, Azure App Service)

1.  Database (database stored functions and procedures will be treated as a part of the software application)

1.  File Storage System/Service

1.  Network Appliance (virtual or real)

1.  External Device Driver/Firmware

A change to one of these components will be treated a change to the entire component and the version number and change list will describe the entire component.

The RTP should detail initial and ongoing vetting procedures for third-party providers and components (if not covered in the Process Descriptions), to include open source software and libraries. Vetting should include fit for the provider as well as security and reliability. Management of third parties includes the approach to policies, SLAs, reputation, maintenance, and past performance of third-party software and services.

Initial Submission: Always required

Revision Submission: When changed from last submission 

> A lack of documented third-party component details will not exclude a participant from the program’s pilot phase. The pilot program will work with the provider to develop the necessary documentation.

#### Product Environment and User Documentation

The RTP must provide access to a product environment that can be used by the administrator to conduct the RABET-V iteration. This should be a dedicated environment running the new product version. The administrator must provision user accounts and test data consistent with the Expected Usage statement. Test data should not include sensitive information, but may include data from real elections that is sanitized as necessary to remove personal information, product passwords, etc.

On the initial submission, the RTP should include user documentation and be available for a training session to assist the Administrator in understanding the product usage. Updated documentation and training sessions should be provided when changes are significant enough to warrant the update. User documentation must include the product version number it was written to support.

For many products, the product environment is the deployment of the web application to a sandbox hosting environment. For products like electronic pollbooks with physical devices, the product environment must include deployments of the product revision on physical devices provided to the administrator.

Initial Submission: Always required

Revision Submission: Always required

#### Revision Submission Artifacts

The RTP can submit a product revision to RABET-V at any time. Engaging the Administrator about upcoming changes and consulting the existing Testing Rules will help the RTP better prepare their submission.

All Revision Submissions require the following artifacts:

1.  Change list - Indicates which components have changed and what level of change was made. It should reference the components identified in the architecture review.

1.  Artifacts - The product development artifacts identified in the existing Process Review. These artifacts provide the necessary information on product changes to conduct a review of the changes in the Change List

1.  Desired Deployment Date - Target date for deploying the product revision in a production environment.

1.  Version number - The version number of the current product revision. It must indicate and correspond to code branches and change size (i.e. minor version number changes must correspond to minor changes).

A provider may change any of the Initial Submission items during a Revision Submission by providing updated information and alerting the Administrator. If they are not submitting updates for any given artifact, the RTP will have to attest to there being no change.

Initial Submission: Not applicable 

Revision Submission: Always required

### Submission

Once the Initial Submission or Revision Submission package is complete, it should be submitted electronically to the RABET-V Administrator.

> For the pilot, CIS will provide a method to submit this information.
