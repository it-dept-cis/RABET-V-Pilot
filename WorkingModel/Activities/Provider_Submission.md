# Provider Submission
The RABET-V process begins with a product submission.

## Submission Types
All product submissions are either an Initial Submission or a Revision Submission.

### Initial Submission

The Initial Submission is a first-time submission of product information. It includes statements about the product and the Registered Technology Provider (RTP) that will be used throughout the RABET-V process.

An Initial Submission requires all items listed in the remainder of the Provider Submission Process.

### Revision Submission

A Revision Submission is for changes being made to a product that has already been through the RABET-V process. It includes information about changes to the product since the last submission.

An RTP can make a Revision Submission at any time. It can improve the likelihood of a smooth process by engaging the [Verification Authority](../RABET-V_Glossary.md) about upcoming changes and understanding how any established Testing Rules will be impacted by deviations from the previous version.

A Revision Submission requires only the change list, artifacts, desired deployment date, and version numbers items listed in the remainder of the Provider Submission Process.

## Submission Items

### Product Goals -- Initial Submission Only
The Product Goals statement is a description of the product's purpose in non-technical language. It should be brief: a one or two paragraph summary of what the product is designed to do.

This description will be used  by the [Verification Authority](../RABET-V_Glossary.md) in the Submission Review activity to determine if the stated security claims align with with the product goals. For example, if the Product Goals include managing sensitive voter information, the Verification Authority will expect to see security claims designed to protect sensitive voter information.

The Product Goals will be published in the [RABET-V Public Portal](../RABET-V_Glossary.md).

### Expected Usage -- Initial Submission Only
The Expected Usage statement describes how the provider expects the election office to use the product. While it can communicate this through a number of means, a good approach is through high-level use cases that list the actions and interactions between involved parties and the system to achieve the Product Goals.

This description will be used  by the [Verification Authority](../RABET-V_Glossary.md) in the Submission Review activity to determine if the stated security claims align with the expected usage.

The Expected Usage will be published in the [RABET-V Public Portal](../RABET-V_Glossary.md).

### Product Security Claims -- Initial Submission Only
The Product Security Claims statement is a listing of security requirements met by the product. While the provider may use any set of security requirements, there is a strong preference for leveraging widely-accepted and publicly available control sets to the maximum extent possible. For instance, the provider may have specific security requirements for the product, but should map those requirements to the most recent revisions of the CIS Controls or NIST SP 800-53.

For each implemented requirement, the provider will describe how they implement it. If the provider only implements it on certain components, those should be detailed along with a reason for excluding it from other components. The provider should include well-reasoned arguments for why the implementation decisions were made and how they result in the appropriate level of security for the product. This approach allows for each product to implement a unique approach to the security of their application that is specific to its goals and usage.

### Process Descriptions -- Initial Submission Only

The Process Descriptions statement is about the provider's development and operating environment and organizational maturity and controls. There are two parts the statement: the software development maturity and the organizational security maturity.

For the software development maturity portion of the Process Description statement, the provider should use OWASP Software Assurance Maturity Model (SAMM) as the basis for its evaluation. SAMM will also provide the basis for the interview portion of the process assessment.

For the organizational security maturity of the Process Description statements, the provider should use the most recent version of the CIS Controls. The maturity of the provider's organizational security approach will be determined based on its adherence to each of the CIS Controls Implementation Groups.

A lack of detail in the Process Description statement will not exclude a provider from participating in the program, though it may slow the pace of the review. The pilot program will work with the provider to create the necessary descriptions.

### Architecture Documentation and Diagrams -- Initial Submission Only

TBD - John

*The lack of architecture documentation and diagrams will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.*


### Third-Party Component Details -- Initial Submission Only

The Third-party Component Details describe the provider's approach to managing supply chain risk. This includes whether the organization has selected third-party software components with a history of known vulnerabilities, and how the organization maintains traceability and assurance of third-party and open source software throughout the lifetime of the software.

The provider should detail initial and ongoing vetting procedures for third-party providers and components, to include open source software and libraries. Vetting should include fit for the provider as well as security and reliability. Management of third-parties includes the approach to policies, SLAs, reputation, maintenance, and past performance of third-party software and services.

*The lack of documented third-party component details will not exclude a participant from the program's pilot phase. The pilot program will work with the provider to develop the necessary documentation.*

### Revision Submission Artifacts

All Revision Submissions require the following artifacts:
* Change list - Indicates which components have changed and what level of change was made. It should reference the components identified in the architecture review.
* Artifacts - The product development artifacts identified in the existing Process Review. These artifacts provide the necessary information on product changes to conduct a review of the changes in the Change List
* Desired Deployment Date - Target date for deploying the product revision in a production environment.
* Version number - The version number of the current product revision. It must indicate and correspond to code branches and change size (i.e. minor version number changes must correspond to minor changes).

A provider may change any of the Initial Submission items during a Revision Submission by providing updated information and alerting the Verification Authority.

## Submission

Once the Initial Submission or Revision Submission package is complete, it should be submitted electronically to the RABET-V certifying authority (TBD). For the pilot, this information will be submitted to a secure file upload portal (TBD).
