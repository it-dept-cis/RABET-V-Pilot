 The RABET-V Program

This document is for use through the life of the RABET-V Program. This initial version will also inform the RABET-V Pilot Program which is a trial execution of the Program Description. As such, some sections have additional commentary specific to the pilot. These sections are marked in indented italics like the example below.

> *Example Pilot comments*

## Steering Committee

The RABET-V Pilot Program is guided by a steering committee comprised of election officials, election technology providers, and other election infrastructure stakeholders.

  - Aaron Wilson, Sr. Director of Election Security at The Center for Internet Security (CIS) - Steering Committee Chair

  - Jerome Lovato, Testing and Certification Director at The Election Assistance Commission (EAC)

  - Don Palmer, EAC Commissioner

  - David Beirne, Federal Voting Assistance Program (FVAP)

  - Nikki Charlson, Maryland State Board of Elections

  - Spencer Wood, Ohio Secretary of State’s Office

  - Richard Rydecki, Wisconsin Elections Commission Staff

  - Christina Adkins, Texas Secretary of State’s Office

  - Jessica Myers, Pennsylvania Secretary of State’s Office

  - Mike Moser, Pennsylvania Secretary of State’s Office

  - Voting System Technical Oversight Program (VSTOP), Indiana Secretary of State

## Pilot Participants

The following technology providers have volunteered to have their
products used in the RABET-V Pilot:
  
  - VR Systems - Electronic Pollbooks and Election Night Reporting

  - KNOWink - Electronic Pollbook


## Technology Advisory Committee

The RABET-V Technology Advisory Committee is a growing group of experts in relevant subject matter that are volunteering their time to assist in the refinement of the RABET-V process.

  - Jono Spring, SEI CERT Division

  - Lauren Cooper, SEI CERT Division

  - Brian Glas, OWASP SAMM

  - Beau Woods, Atlantic Council

  - Mary M Shaw, Carnegie Melon

  - David Garlan, Carnegie Melon

  - Ryan Wagner, Carnegie Melon

  - Joshua Bloch, Carnegie Melon

  - Daniel Plakosh, SEI

  - Gema Howell, NIST

  - Mary Brady, NIST

  - Gordon Gillerman, NIST

  - Lisa Carnahan, NIST

  - Peter A. Bloniarz, New York State Cyber Security Advisory Board

  - Rob Gordon

## Program Administration and Research

The program will be administered by CIS team with assistance from [The Turnout](https://turnout.rocks) and [PG Security Advisors](https://www.pgsecurityadvisors.com/). Dr. Mike Garcia will serve as the Research Lead.

## Pilot Process

The RABET-V Pilot will first establish a RABET-V Program Description (this document). The Program Description version will detail how each activity will be conducted. The Program Description will be iteratively reviewed by the program Steering Committee and modified, as necessary.

Using the Program Description, the Pilot Program will conduct initial reviews on real products from Pilot Program technology providers. Each initial review will execute all RABET-V activities resulting in the creation of Testing Rules and initial verification results for each product. The Architecture Review and Process Assessments will be conducted according to the architecture and process review steps detailed in the Program Description, which may be updated as necessary throughout the Pilot Program.

The RABET-V process will be conducted on real products from Pilot Program technology providers that represent diverse offerings. The Pilot Program will work with pilot participants to develop their submission package and security claims. This pilot will then follow the architecture and process review technical guidance and develop risk-based product-specific testing processes. The Pilot will evaluate the value of its activities, along with the time and cost, and conclude with recommendations on the best approach.

The Pilot will then conduct multiple iterations of RABET-V on product revisions from the participants. Depending on the changes, RABET-V will adapt and conduct only the activities required. This exercise will highlight the effectiveness of RABET-V to create meaningful but streamlined verifications and help determine the effectiveness of the product architecture and process reviews. It will also provide useful time and cost information. After each RABET-V iteration, changes may be made to the testing process and the iteration repeated as necessary.

## Pilot Research Questions

### Time and Cost Implications

1. What are the review time implications of the RABET-V approach for:

      - The initial verification of a product from a new vendor?
    
      - The initial verification of a product from a vendor that have been through the RABET-V process?
    
      - The re-verification of a product?

1. What are the total cost implications of the RABET-V approach for:
    
      - The initial verification of a product from a new vendor?
    
      - The initial verification of a product from a vendor that have been through the RABET-V process?
    
      - The re-verification of a product?

1.  Is there a viable economic model for the RABET-V process? If so:
    
      - Does it require a government agency to drive the program, similar to voting system certification?
    
      - Is there a model that suppliers in the market can support?
    
      - Is there a model that states and localities can support?

1.  Will the process be efficient enough to keep costs low enough for vendors to make minor updates?

### Market Maturity Implications

1.  Is there evidence that products are architected in a manner that is mature enough for the RABET-V process to yield benefits by reducing the extent of re-verification reviews?
    
      - Will vendors be willing to submit small, frequent updates?

1.  Is there evidence that state and local adoption and acceptance processes can leverage the RABET-V process to yield benefits?

      - Can states and localities accept RABET-V verifications quickly enough to make the process worthwhile?
    
      - Will states and localities be willing to adopt new versions at a rate that maintains incentives to put small, more frequent updates through the process?

### Pre-Review Assessment Implications

1.  Is there a sufficient correlation between process assessment results and verification outcomes to use those assessments to expedite verification and re-verification under RABET-V?

1.  Should process assessments be renewed and, if so, how often or under what circumstances?

1.  What party is best equipped to conduct process assessments?

1.  Do architecture reviews provide a sufficient understanding of a given product to determine the impact of:
    
      - De minimus system changes?
    
      - Minor system changes?
    
      - Major system changes?

1.  Should architecture reviews be renewed and, if so, how often or under what circumstances?

1.  What party is best equipped to conduct architecture reviews?

### Technical Evaluation Implications

1.  For which types of non-voting election technology will the process work?
    
      - Is it better suited for some types of technology over others?
    
      - How, if at all, does the process have to be modified to make it more suitable?
    
      - Are vendors more likely to accept the RABET-V process for certain types of equipment?
    
      - Are states and localities more likely to accept the RABET-V process for certain types of equipment?

# RABET-V Program

RABET-V is a flexible, risk-based, and cost-effective approach to election system verification that will expedite verification of election systems while providing assurances of security and reliability.

> The RABET-V Pilot Program is designed to evaluate the RABET-V process and the potential of the process to improve the speed, security assurances, and cost-effectiveness of non-voting election technology verification.

For more information of the Background and Motivation for RABET-V, see CIS’ [How to Improve Election Technology Verification White Paper](https://raw.githubusercontent.com/it-dept-cis/RABET-V-Pilot/master/docs/source/media/Elections_Tech-Ver-White_Paper-2020-0121.pdf).

## Introduction

This section introduces the program goal and scope. For a list of the definitions as they are used by the Program, see the [RABET-V Glossary](Appendices/RABET-V_Glossary.md).

### Program Goal

The RABET-V Program is a rapid, reliable, and cost-effective approach to verifying the security of non-voting election systems. Its goal is to provide assurances of security and reliability sufficient for stakeholders to have confidence in their use in election administration. Participating organizations will have demonstrated capabilities to effectively build, test, monitor, and maintain their election technology solution through an evidence-based process.

### Program Scope

RABET-V is intended for non-voting election technology systems.

An election technology system is an information system that supports an elections administration process.

A “voting system” is defined in the Help American Vote Act (H.R. 3295, Sec 301) as “(1) the total combination of mechanical, electromechanical, or electronic equipment (including the software, firmware, and documentation required to program, control, and support the equipment) that is used—(A) to define ballots; (B) to cast and count votes; (C) to report or display election results; and (D) to maintain and produce any audit trail information; and (2) the practices and associated documentation used—(A) to identify system components and versions of such components; (B) to test the system during its development and maintenance; (C) to maintain records of system errors and defects; (D) to determine specific system changes to be made to a system after the initial qualification of the system; and (E) to make available any materials to the voter (such as notices, instructions, forms, or paper ballots).”

A non-voting system is any other information system used to administer an election. Examples include voter registration databases, electronic pollbooks, or the websites of government election authorities.

## RABET-V Administrator

The RABET-V Administrator is a central body responsible for overseeing the RABET-V Program. The responsibility includes (some of the terms listed here are described later in this section):

  - Accept requests from and manage list of RABET-V Subscribers

  - Accept requests from and manage list of RABET-V Registered Technology Providers (RTPs)

  - Host and manage content on the RABET-V Public Portal

  - Manage the RABET-V Program Description, making changes as necessary and as approved by the Steering Committee

  - Execute RABET-V Iterations when Product Submissions are made by RTPs

  - Staff or delegate the execution of RABET-V activities with qualified individuals or organizations

> The Center for Internet Security, its staff, and contractors, are serving as the RABET-V Administrator for the RABET-V Pilot Program

## Registered Technology Providers

A Registered Technology Provider (RTP) is an organization that develops election technology and has met the minimum requirements in this section.

To be a RABET-V Registered Technology Provider, the technology provider must submit a complete RTP request and agree to the RABET-V Program Commitment. An RTP is responsible for submitting their first Product Submission within 3 months of becoming an RTP.

Registered Technology Providers will be listed on the RABET-V Program Portal.

> For the Pilot Program, each pilot participant will be considered an RTP without going through the registration process.

### Registered Technology Provider Request Package

Technology providers must submit a completed request package to become an RTP. A complete package will contain the following information:

  - Company Name, Legal Address, and Address(es) of all locations

  - Sales and Technical Support Points of Contact

  - Website URL

  - Company Description

### Program Commitment

RTPs must agree to the RABET-V Program Commitment. The commitment establishes the ethical and responsible behavior expected by all program providers.

The Program Commitment requires:

  - Accurate representation of the product capabilities and its security provisions to RABET-V administrators, RABET-V subscribers, customers, and other stakeholders

  - Organization implementation and regular assessment of an organizational security framework like the CIS Controls. The RTP should perform organizational security audits regularly and provide the report to the RABET-V Administrator. The report will be provided to RABET-V Subscribers.

  - Continuous product maintenance, including the patching of components within reasonable time frames

### Provider Deregistration and Product Delisting

Failure to meet the requirements of the Program Commitment can lead to deregistration of the RTP and delisting of the RTP’s products. Activities subject to deregistration are any that breach the Program Commitment. These include, but are not limited to:

  - Inaccurate representation: if the vendor is found to have intentionally mislead RABET-V administrators or its customers as to the capabilities of the organization or the product.

  - Lacking organization security: if the vendors fails to subscribe to an organizational security framework, like the CIS controls, and maintain regular audits.

  - Lacking product maintenance: if the vendor is no longer properly supporting a product with regular monitoring and maintenance.

### Deregistration Process

TBD

### Delisting Process

TBD

## Subscribers

RABET-V Subscribers are state and local election jurisdictions who intend to use the RABET-V reporting to assist in their certification, approval, or purchase decisions. RABET-V Subscribers will have access to the sensitive information produced by the RABET-V Program. Subscribers must submit a request to the RABET-V Administrator and agree to protect sensitive information. This information will be made available to Subscribers through a secure portion of the RABET-V Public Portal.

> An agreement will be drafted for Subscribers to sign prior to being given access.

## RABET-V Public Portal

### Purposes

There will be a RABET-V public portal. The public portal serves the following purposes:

  - Lists all RTPs

  - Provides a product registry which list all submitted products and the product’s latest goals, expected usage, and security claims

  - Lists all Product Versions submitted by RTPs, the date of submission and date of completion, the outcome of the submission, and the RABET-V report

### RABET-V Subscriber Access vs. Public

In an effort to maximize transparency, documentation in the RABET-V process is made as widely available as possible. There are three broad classes of sharing for RABET-V documents and reports:

  - Public: documents and reports that are made fully available to the public

  - Shared with Subscribers: documents and reports that are made available to those Federal, State, and local election authorities that have requested access and has agreed to treat the information as sensitive

  - Shared with the RTP: documents and reports that are shared only with the RTP, though the RTP is free to share documentation with other entities as it sees fit.
