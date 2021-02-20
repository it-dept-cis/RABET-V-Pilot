# Executive Summary

Since 2019, CIS has been working to fill gaps in the security of non-voting election technology. This began with the publication of [Security Best Practices for Non-Voting Election Technology Guide](https://www.cisecurity.org/wp-content/uploads/2019/11/Security-Best-Practices-Non-Voting-Election-Tech-Singles-19-Nov.pdf) and continued with the development and piloting of the Rapid Architecture-Based Election Technology Verification (RABET-V) process.

RABET-V is a unique approach to the verification of system security. Instead of employing a thorough and lengthy approach to testing, it uses an iterative, risk-based approach that supports rapid product changes by design. The risk estimate is based heavily on the product's architecture and provider's software development processes. Lower-risk changes are tested using streamlined testing methods; and higher-risk changes are fully tested. This approach leverages and encourages modern software development, testing, and deployment practices. It also provides incentives for technology providers to design their products with stronger organizational processes and preferred architectures, as this eases the testing process by reducing the time and cost associated with verification.

To determine the viability and effectiveness of RABET-V, CIS conducted a pilot in 2020 with the assistance of a steering committee made of election officials and two technology providers who supplied their products for testing. Prior to conducting the pilot, CIS worked with a group of stakeholders to develop a set of research questions, which were used to evaluate RABET-V. During the course of the pilot, the core team developed the detailed procedures necessary to perform each step in the RABET-V framework, which CIS first laid out in its white paper entitled [How to Improve Election Technology Verification](https://www.nass.org/sites/default/files/2020-01/white-paper-cis-nass-winter20.pdf). The detailed procedures were published as the RABET-V Program Description and were followed and updated throughout the pilot.

The sections contained in this report provide further details of the pilot. Drawing from the pilot and interviews with the steering committee and other stakeholders, we present the following conclusions.

1. *RABET-V is a viable process for non-voting equipment* - The pilot successfully evaluated two electronic pollbooks and one election night reporting solution. 

1. *We can evaluate architectures and use the evaluation to assess risk of changes* - The pilot developed a rubric to measure architectural maturity and completed three reviews on three vastly different architectures.

1. *We can evaluate software development processes and use the results to assess likelihood of positive security outcomes* - The pilot used an established process maturity model from OWASP and completed process evaluations with two different companies.

1. *We can develop a testing matrix that prescribes different levels of testing based on the type of change, the architecture maturity score, and process maturity score* - The pilot defined three testing tiers and created a unique testing matrix per product to define which testing tier will be used in future testing based on the combination of the three risk-determining inputs.

1. *We can re-evaluate new product versions more quickly for products with higher process and architecture maturity scores* - The testing matrix provides for lower cost and more timely testing methods for high maturity scores.

1. *RABET-V can be run by a central administrator with various activities conducted by external specialists* - CIS acted as administrator and contracted with specialists to perform activities such as process assessments, threat modeling, architecture models, and functional testing.

1. *RABET-V is compatible with multiple operational and economic models* - The pilot developed several operational and economic models that RABET-V could work with and validated it with them with the steering committee.

The initial RABET-V pilot successfully demonstrated that RABET-V is a viable process for non-voting equipment. From this pilot, we learned what a future continuous program should look like, how it should be administered, and what it would take to run it. We believe two lines of effort will bring RABET-V into a full -scale production program serving U.S. elections.

- First, a second round of pilots that generate the necessary data, documentation, and tools to establish the RABET-V process as a standard across any type of non-voting elections equipment.
- Second, a developmental phase to finalize the operational and economic models that will ensure RABET-V is adopted as a standard by state election officials and technology providers.

The need for RABET-V is now. The lack of consistent testing across states and the use of traditional testing processes — where testing is performed — represents a significant gap in election infrastrcture security. RABET-V helps close this gap and balances multiple, and often competing, needs:

- RABET-V provides a rigorous verification and testing that meets the needs of a critical application like the election environment.
- RABET-V provides a means to and incentives for rapid development and deployment of product updates that we see in innovative industries. 

The rest of this report is organized into sections. First, in section X, we provide a detailed recap of how the pilot was executed and discuss the variations from the initial plan to final execution. Next, in section X, we present our answers to the research questions - which were identified prior to the pilot - and discuss our related findings. In section X, we define possible operational and economic models for RABET-V. Finally, we conclude the report with recommendations for follow on RABET-V work and how to transition to a stable operation.

All supporting material is found in appendices at the end of the report. 