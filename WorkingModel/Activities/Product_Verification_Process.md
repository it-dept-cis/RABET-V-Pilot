# Product Verification Activity

The purpose of the product verification activity is to finalize the Security Services Capability Maturity (SSCM) scores for this product revision. For some product changes, this activity will be streamlined because the changes were determined to pose a low risk to the current security capability scores. For other changes, this activity will be extensive in order to determine, or redetermine, the proper maturity scores. The risk is calculated by the Testing Rules which produces a Test Plan commensurate with the risk. 

## Inputs

* Testing Rules
* Product Revision Submission (Product Revision deployed to test environment, Product development artifacts)
* Component definitions from Architecture Review (used to set scope of testing)


## Outputs

* Results of verification test methods

## Workflow

### 1. Test Plan Generation

The Test Plan for the Product Verification activity is generated from the product's Testing Rules. The Testing Rules are built in the Testing Rules Determination activity and may be recently created or be existing rules from prior RABET-V iterations. 

The Testing Rules are a decision tree where each change is processed by the tree and the end result is a verification method(s) to use. This must be done for all changes and the Test Plan is the aggregation of all verification methods. 

For initial submissions, a full system test is performed. A full system test is will review automated test results, perform a system wide functional test and penetration test. 
 
### 2. Execute Test Plan for Security Requirements

The Test Plan will identify how to test the product revision using one or more of the verification methods. Each verification method has its own workflow. 


### 3. Sanity Testing for Product Type Requirements

RABET-V is primarily a security verification process. However, it is critical that each product revision processed by RABET-V meet basic product requirements for its stated purpose. During the initial RABET-V iteration, sanity testing will be performed against a basic set of product requirements based on the product type. For subsequent RABET-V iterations, the testing rules will indicate whether sanity testing is necessary and whether it is limited or full. Limited sanity testing is focused on the changed component. Full sanity testing will perform testing on all requirements. 

## Verification Methods

As indicated in the Test Plan, the RABET-V reviewers will use one of more of the following techniques. The scope of the testing (i.e. which components to test) will also be indicated by the Test Plan.

### Artifact Review
This method will review an artifact provided by the technology provider. The review will look for gaps or concerns in relevant security controls based on the information provided. Each type of artifact will have various indicators of acceptability. Types of provider artifacts include:

* Automated source code unit test results
* Automated vulnerability test results
* Automated configuration verification results
* Security event audit logs 
* 3rd Party security analysis results (automated or manual)

The artifacts must be evaluated as "reliable" during the Process Assessment activity in order to be used for Product Verification. 

### Automated Testing
Automated testing is broad type of testing relying on software to perform test routines against the product or product component. Automated testing will execute the testing software against its target and produce results which will be evaluated by the Verification Authority or its agent. The type of automated test will depend on the target. The types of automated testing currently conceived for RABET-V include:
* Configuration Testing
* Vulnerability Analysis
* Source Code Analysis
* Accessibility Testing
* Browser Compatibility Testing

### Functional Testing
Functional testing is a broad type of testing which focuses on the system output (i.e. the functionality users can interact with). It is geared toward testing the functional requirements of the product and is a manual testing method. The scope and intensity of functional testing can vary, and there are sub-types of functional testing to indicate the scope and intensity. The following sub-types are used in RABET-V:

* Component - testing which evaluates a singular component and the requirements associated with that component
* Sanity - testing that is done to ensure that all the major and vital functionalities are working correctly
* Regression - testing performed to ensure that adding new code, enhancements, fixing of bugs is not breaking the existing functionality or causing any instability and still works according to the specifications. 
* Integration - validation that multiple components work coherently when operating together.
* System/Sub-system - testing that is performed on a complete system or sub-system to verify it works as expected once all the modules or components are integrated.
* End to End - testing performed to verify the functionality of the product.
* Exploratory/Ad-hoc - informal testing to explore the application and looks for defects which exist in the application.

### Penetration Testing
Penetration tests evaluate the product to find security vulnerabilities that an attacker could exploit. The scope of a penetration test may be the product's network, computer systems, or software application(s). In RABET-V, the penetration testing is limited to web application penetration testing. Web applications expose the greatest surface area for which automated testing is incapable of fully evaluating. Automated tools are fairly effective for network and computer systems where the major issues are vulnerable versions and lack of patching. Web applications, however, are custom and may have a variety of issues not easily captured by automated tools. Automated tools help with web application pen tests but must be used by skilled and experienced testers.

RABET-V relies on the [OWASP Web Application Security Testing Guide](https://github.com/OWASP/wstg/tree/master/document/4-Web_Application_Security_Testing) to segment up the penetration testing options.

In addition to a full penetration testing option, the following web application penetration testing subtypes are supported:
* Configuration and Deployment 
* Identity Management
* Authentication
* Authorization
* Session Management
* Input Validation
* Error Handling
* Cryptography

Limited penetration testing may be used if the changes do not warrant full penetration testing. 

## Out-of-scope Testing

There is other testing which is out of scope for RABET-V. RABET-V is chiefly concerned with verifying the security and reliability of the product revision in a rapid way. Since rapid change cycles are possible with RABET-V, other user-centered types of testing can be performed by the current or potential end users and the changes reprocessed through RABET-V without significant lag. These other testing types include:

### Acceptance Testing

Acceptance Testing, or User Acceptance Testing (UAT), is performed by the client and verifies whether the end to end the flow of the system meets their business requirements or not. The client accepts the system only when all the features and functionalities work as expected. 

 ### Beta Testing
Beta Testing is carried out by the customer or potential customer. It is performed in the real environment before releasing the product to the market for the actual end-users. Beta Testing is often used to ensure that there are no major feature gaps or bugs in the product and it satisfies the business requirements. 
Usually, this testing is typically done by end-users or others. It is the final testing done before releasing an application for commercial purpose. Usually, the Beta version of the software or product released is limited to a certain number of users in a specific area.

### Usability Testing
Under Usability Testing, the user-friendliness is verified. The application flow is tested to know if a new user can understand the application easily or not and if proper help documentation is provided. 
RABET-V measures the provider's usability and accessibility testing process maturity but the ultimate usability testing should be performed by the end-users.
