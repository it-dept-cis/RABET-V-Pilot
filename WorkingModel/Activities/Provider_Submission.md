# Provider Submission 

The information required from a Registered Technology Provider (RTP) will vary based on whether this is the RTP's initial submission of a product revision submission. The initial submission will require the most information in order to establish the product in the RABET-V program. Revision submissions will require varying levels of information based on the changes submitted and how those changes impact current [Testing Rules](../RABET-V_Glossary.md). 

## Initial Submission

The Initial Submission is a unique, one-time submission, though various aspects of it can be revised as a part of a product revision. The Initial Submission requests product-wide information and claims which do not change with each product revision. This information can be changed as a part of subsequent product revisions. The following lists the product-wide information. To construct your Initial Submission package, include the following in addition to the items requested in the Revision Submission section below.

### Product Goals
The Product Goals are a one or two paragraph summary of what the product is designed to do. This is a free form description which should clearly state the product goals in a non-technical way. This description will be used  by the Verification Authority in the Submission Review activity to determine if the stated security claims are commensurate with the product goals. For example, if the product goals include managing sensitive voter information, the Verification Authority will expect to see security claims designed to product the sensitive voter information. The product goals will also be published in the [RABET-V Public Portal](../RABET-V_Glossary.md). 

### Expected Usage
The Expected Usage statement should identify the ways in which the product is expected to be used. THis is a free form description which will be used along with the Product Goals to evaluate the product's security claims. The Expected Usage will be published along with the Product Goals on the RABET-V Public Portal. One way to communicate the Expected Usage is by providing high-level use cases. Use cases lists the actions or interactions between an actor and a system to achieve a goal. For this submission, the Expected Usage is meant to be more comprehensive and less detailed. 

### Product Security Claims
The Product Security Claims are statements from the RTP about which security controls they implement. These must be appropriate for the product goals and expected usage. RABET-V will use the Security Best Practices for Non-Voting Election Technology as the basis for the security claims. For each implemented best practice, the provider will describe how they implement it. If the provider only implements it on certain components, those should be detailed along with a reason for excluding it from other components. Well-reasoned written arguments for why the implementation decisions and how they result in the appropriate level of security for the product are expected. This approach allows for each RTP to implement a unique approach to the security of their application that is specific to its goals and usage.  

An indication of which security best practices a provider meets based on their verified security claims will be published to the RABET-V Portal Portal. 

### Architecture Documentation and Diagrams


* 4 POVS
* The level of granularity provided will impact the level of granularity reflected in the Testing Rules. Therefore, there is some incentive to providing a more detailed architecture description. 
* Identify
** Critical Compoennts
** Criticl Data
** Etc

*The lack of architecture documentation and diagrams will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.* 

### Process Descriptions

*The lack of process descriptions will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.* 

### Third-Party Component Details

*The lack of documented third-party component details will not exclude a pilot participant from the program. The pilot program will work with the provider to create documentation and diagrams which are missing.* 

## Revision Submissions

A Registered Technology Provider (RTP) can submit a product revision to RABET-V at any time. Fore warning is not necessary but may be helpful. Engaging the [Verification Authority](../RABET-V_Glossary.md) about upcoming changes and consulting the existing Testing Rules (if exist) will help a technology provider better prepare their submission. 

* Change list
* Artifacts
* Desired Deployment Date
* Version numbers must indicate and correspond to code branches and change size
* Must be a way to verify version numbers for each component and for the solution itself
