# Pilot Program Recap  

In this section, we provide a recap of the pilot program and discuss the differences in initial expectations and the actual execution.

## Background

In 2019, the Center for Internet Security (CIS) began to work to fill gaps in the security of non-voting election systems. There are both voting and non-voting types of election systems. A “voting system” is defined in the Help American Vote Act (H.R. 3295, Sec 301). A non-voting system is any other election technology system used during the election. Examples include voter registration databases, electronic pollbooks, or the websites of government election authorities.

First, CIS developed the [Security Best Practices for Non-Voting Election Technology Guide](https://www.cisecurity.org/wp-content/uploads/2019/11/Security-Best-Practices-Non-Voting-Election-Tech-Singles-19-Nov.pdf) to provide a comprehensive set of security best practices. At the conclusion of that effort, CIS began working on a process to verify election technology against those best practices. This effort produced the concept of Rapid Architecture Based Election Technology Verification (RABET-V).

![RABET-V Timeline](../media/timeline.png)

After receiving input from various stakeholders in November of 2019, CIS developed the RABET-V framework and released it in a white paper entitled [How to Improve Election Technology Verification](https://www.nass.org/sites/default/files/2020-01/white-paper-cis-nass-winter20.pdf) during the NASS 2020 Winter Conference.

Based on the RABET-V Framework and with financial support from the Democracy Fund, CIS launched the first pilot of RABET-V in February 2020. The RABET-V Pilot Program was guided by a steering committee comprised of election officials, election technology providers, and other election infrastructure stakeholders. The steering committee included representatives from the states of Indiana, Maryland, Ohio, Pennsylvania, Texas, and Wisconsin. Representatives from the Election Assistance Commission (EAC), Cybersecurity and Infrastructure Security Agency (CISA), National Association of State Election Directors (NASED), and the Federal Voting Assistance Program (FVAP) further comprised the steering committee.  Two technology providers volunteered their products and time to participate in the pilot. Knowink submitted their electronic pollbook, PollPad. VR Systems submitted their electronic pollbook, EViD, and their election night reporting solution. CIS also engaged with a group of technology experts who comprised a RABET-V technology advisory committee. 

The RABET-V Pilot first established a RABET-V Program Description. The Program Description is a detailed guide on how to run RABET-V. It was developed in early 2020 and was iteratively reviewed and modified by the core team and program Steering Committee, as necessary.

Using the Program Description, the Pilot Program conducted initial iterations on the technology providers' products. Each initial iteration of RABET-V executed all activities resulting in the creation of maturity scores for each product and a testing matrix to guide future iterations.

## Challenges and Resolutions

Throughout the pilot, the team encountered various challenges that were logistical and technical in nature. This section recaps those challenges and how the team addressed them during the pilot or proposes to address them in future RABET-V efforts.  

### Inventing an Architecture Review Methodology

As the name indicates, RABET-V puts a significant emphasis on the product architecture with the intent for the architectural maturity to determine the level of testing performed on the product. Entering the pilot, we had broad buy in from technical stakeholders that this was possible, but we did not have a method of determining architectural maturity for this purpose. While there are many architecture review processes, the team could not identify one that evaluated architectures to determine the risk of changes to security outcomes. This left the task to the project team.

Our first proposal, outlined in the initial Program Description,  created two streams of effort. The first stream focused on system level analysis using threat modeling. The second stream relied on software analysis to identify and map software level components to security services. The initial approach used the system level analysis to inform the software level analysis and produced scores predominately at the software level. We ended, however, with an approach where the software level analysis informed the system level and the scores were driven primarily from the system level. This is an important distinction which made the analysis much more feasible and reliable. This is most evident in the changes we made to the Security Service Architecture Maturity rubric. The initial version of the rubric discussed the *construction* and *usage* around security services and the language was written almost entirely from a software perspective. 

In fact, one key decision made in the development of the final Security Service Architecture Maturity rubric was that better architectures relied as much as possible on dedicated and isolated components distinguishable at the system level. This belief is baked into the rubric. Realizing that this is not possible for all security services, the rubric has accomodations for the security services we believed required some level of configuration or integration with the solution's custom software. We called these composite services, and the ones which could be completely isaolated we called transparent services.

The rubric also considers the complex nature of systems with components and sub-components. It does this by calculating scores at five layers, starting at the most detailed level of security service implementation per component or interface and resulting in a master architecture score. Then, the rubric has a unique category for *depth* which is intended to be top-down view over the whole architecture. In this manner, the architecture maturity score is a reflection from the bottom-up and a top-down perspectives.

![Diagram of Hierarchy of Architecture Scoring](../media/RABET-V_Architecture_Scoring.svg)

To support our analysis, we used MagicDraw....
See a couple of documents in Supporting area:
* Understanding Architecture Review Diagrams
* Scoring with MagicDraw
* 

* Dynamic code languages make architectural analysis of the software difficult or perhaps impossible.  

We ultimately determined that the level of software analysis we initial intended to do was both too difficult and unnecessary.
 
We still aren’t sure how valuable the software level analysis will be in creating architecture maturity scores, but we do believe it will give us a sense of the level of software changes and their impact. 

The threat modeling has produced meaningful architecture diagrams. Neither provider had meaningful architecture diagrams. This is key and something that would yield even more benefits the more we invest in the diagramming. 

The system architecture does feed into the software architecture, but it felt clunky in the pilot. We were missing projects in lattix that are in the system architecture, etc.  

Architecture reviews will go much quicker if there was upfront documentation, but we would still want to verify it some how 

We had high hopes we could do software level architectural analysis. We moved it to the system level because software level was too complex, too variable, and the documentation didn’t exist. We felt the system level architecture review gave us more predictable and usable results. Doing change analysis on the software level will still let us distinguish between big/small changes with security/non-security changes. 

John 

The value of using Lattix is to be seen. Then tool is poor at storing metadata that would be useful for our analysis (notes on how a security service is used, etc.) 

Certain architectures are more amenable to analysis than others. These architectures should be evaluated and considered for “best practices” for participation in RABET-V. 

The threat modeling exercise was valuable in setting the context for other efforts around architecture, it is clear this should be done first. 

The interview process for threat modeling should be beefed up to fill in gaps in documentation. 
Tooling 

Software level analysis has proven very difficult. WhiteSource+Lattix has not shown that the whole is greater than the sum of its parts. Needs to show its value in change management, which is to be seen. 

Ruby support in Lattix seems workable. Perhaps dynamic languages won’t be as big a deal after all. Need to circle back with KnowInk to see if there are any gaps in what Lattix found. 

WhiteSource does not support the Swift package manager KnowInk is using. Opened a support ticket to no response. 

Running tools like Lattix/WhiteSource can be time consuming to ingest. Need technology providers to see value and add to CI/CD chains.  

Rubric 

New rubric appears workable. May need additional tweaks post pilot 

Access to KnowInk source has been helpful for scoring. It has allowed more granular understanding which has caused revision to scores. 

Output 

MagicDraw component diagrams have been useful in creating scores for various components. Initial setup was very time consuming but should be reusable as a template. 

Need reference architectures
Need diagram and documentation examples
Need

### Incorporating Usability and Accessibility


### Conducting a Pilot During a Pandemic and Major Election Year

Lack of hands on exposure to systems
Conducted many interviews

This led to us cutting some of the intial scope and not getting to a second iteration

### Lack of Upfront Documentation Requirements


### Handling System Configurations and Variations


### Visibility of Results


### Presentation of Results for Multiple Audiences


### Capture and Presentation of Testing Rules


### Converting Best Practices to Requirements


### Developing Testing Tiers
