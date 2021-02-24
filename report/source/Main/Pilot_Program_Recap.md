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

In fact, one key decision made in the development of the final Security Service Architecture Maturity rubric was that better architectures relied as much as possible on dedicated and isolated components distinguishable at the system level. This belief is baked into the rubric. Realizing that this is not possible for all security services, the rubric has accommodations for the security services we believed required some level of configuration or integration with the solution's custom software. We called these composite services, and the ones which could be completely isolated we called transparent services.

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

RABET-V is primarily intended to be a verification of product security. However, we heard early on from stakeholders that it needed to also provide a measure of the usability and accessibility as well. We attempted to solve for this in the initial Program Description by expanding the process assessment to include usability and accessibility product development maturity. The assessment focuses on establishing feedback loops as the basic level of maturity and growing to more automated and more formal testing. Each provider in the pilot was evaluated with this assessment. 

While we think this approach is good for usability, we know it is lacking for accessibility. Due to the nature of accessibility requirements, it is possible to incorporate actual evaluation of the accessibility of a product into RABET-V without changing the overall approach or timeline. 

The approach to accessibility testing will use both automated and manual methods. Both are needed since even the best automated tools identify only small portion of known errors, produce false positives, and have difficulty assessing how well solutions are implemented. And functional testing with commonly used assistive technology must be required. Similar to how we approach security, the manual methods will be used for the initial evaluation and for high risk changes. The automated testing will be used for lower risk product updates.    

As an alternative to a risk-based approach, a sampling approach is also viable. The sample approach will need to identify how much of a application must be reviewed for the accessibility audit. It will not be possible or reasonable to audit everything. Although some automated tools can spider an entire site and give some useful information about accessibility, a certain sample of pages must still be selected for in-depth and manual testing. It is important that this sample is representative of content throughout the application especially any interactive functionality with voters.  The RABET-V Program Description must provide direction for how the access audit must be scoped so that there is a sufficient amount of content and templates are reviewed to provide a representative sample of the overall platform and content (e.g. frequently used content like login, variety of content types, content with forms/tables/charts/graphics, interactive sites that use scripts or process user input, etc.). Most systems include both a template that holds the content and the content that is drawn from a database to populate the template and create the page. When auditing these dynamic pages, it is important that the template and content, as well as the generated page, are audited.

Another important factor to accessibility testing are the requirements for the accessibility auditor. As with other specialty areas of RABET-V, the accessibility auditing should be overseen by an organization or person with the requisite expertise and experience. 

EXPERIENCE
How long has the vendor been doing accessibility audits and/or specify a minimum?  Is that their primary business or part of a larger business? Have they done audits of very large online applications and how did they approach those in terms of sampling of pages and prioritizing to ensure a valid review? Were any done within the educational/instructional area? What are examples of websites or applications for which they have completed access audits (references for their accessibility audit work with contact information)? 

EXPERTISE
Who will conduct the testing and what is the expertise of those testers (specific skills, education, and work experience)?  What specific software platforms and applications do the testers have experience evaluating accessibility? (This is usually a group of people with specific areas of expertise in accessibility rather than one person so if minimums are prescribed it would typically someone with programming expertise in accessibility, HTML, ARIA, etc. plus expertise with assistive technology and interoperability testing.)

TESTING METHODS
What are the specific automated and manual testing methods used to evaluate accessibility? How is testing done with commonly used assistive technology?  Are individuals with disabilities who use assistive technology included in the audit as testers?  

We would like to thank Dr. Diane Golden for her assistance with this section.  
 

### Conducting a Pilot During a Pandemic and Major Election Year

As one reviews this pilot effort, it is important to recall that we conducted the pilot during a presidential election year and during a global pandemic. The challenges presented by the election were known ahead of time, and we understood that the operational demands on our participating technology providers and steering committee members would be priority over the pilot efforts. The pandemic further exacerbated these challenges by removing people from the typical work environments, forcing all interactions to be done remotely, and limiting the number of people who could physically test the devices. 

These challenges primarily impacted the pilot timeline, and not the effectiveness or reliability of actual results. We estimate that we lost 3 months to general election between September and December, but we also saw impacts in the Spring and Summer as many states were delaying their primaries and shifting their voting models to more vote-by-mail approaches. These changes took significant efforts from our steering committee members and participating providers. In fact, we had interest from two other technology providers early on who were unable to continue to participate as the pilot got started. 

Perhaps the most significant impact of these challenges was that we were unable to complete our initial plan of performing both an initial iteration of RABET-V and a subsequent product revision iteration. Instead, we were only able to complete the full initial iteration for each of the three products. Performing a full initiation iteration allowed us to completely define and test the RABET-V Program Description, evaluate the effort required for testing, obtain actual process and product maturity scores, obtain preliminary cost estimates, and evaluate the risk-metrics produced. However, by not completing a follow up product revision iteration, we are able to make definitive claims about how the risk-based approach will streamline product updates, the time those updates will take, and cost of those updates. Gathering that necessary information will have to be done in subsequent RABET-V efforts. 

### Documentation Challenges

The initial Program Description outlined a basic of documentation requirements. However, the core team did not require the participants to develop new documentation to those requirements. This was done for three reasons: 1. we did not want to delay the start of the pilot to wait for new documentation, 2. we were looking for reasonable ways to reduce the burden on our participating providers, and 3. we were not confident we were asking for the right documentation. Instead, we took documentation they developed for other certification efforts - such as those performed by the State of New York - and we mapped the documentation to our requirements. 

In truth, this effort was not effective and being more prescriptive would not have helped either. Due to the nature of our efforts, we relied heavily on interview-based data collection techniques. We interviewed management, architects, developers, and others to collect the information we needed. Reviewing their documentation while conducting these interviews revealed a few things about documentation requirements:
1. Documentation will always be a lagging indicator of process or product maturity
2. The time spent reviewing documentation is equal to or greater than conducting interviews
3. Reviewers can obtain greater depth about the process and product from interviews than from documentation

Due to this, we have devalued traditional documentation requirements in the RABET-V Program Description with two exceptions:
1. User documentation - as opposed to technical documentation, user documentation is far more insightful for reviewers and its accuracy is a better indicator of product maturity. Reviewers find it helpful to provide context to product construction. We also believe it provides better ROI for technology providers that technical documentation which is difficult to keep updated, often not used for technical evaluations, and has no value beyond the technical evaluation. 
2. Visual, annotated architecture diagrams - during the pilot, we developed a series of architecture diagrams based on the data we collected primarily through interviews. These became the basis for our system understanding and the architecture maturity scoring. We have developed guidance on how technology providers can create these diagrams themselves. If the technology providers can present quality annotated architecture diagrams to RABET-V to verification and validation, this will greatly reduce the amount of time necessary to conduct an architecture review. We know more guidance an examples are necessary to fully equip providers to do this.


### Handling System Configurations and Variations

During the pilot, it became apparent that each our technologies could be configured with various levels of security controls based upon the customer's requirements or preferences. This created a challenge for expedited evaluations. We certainly could not evaluate each variation during a pilot, nor would that be ideal in an operational version of RABET-V as well. We determined the best approach was to have the technology provider define the specific configuration they wanted to present for verification. We decided to document the configuration choices and present those along with any scores. States and localities then could fully understand the context of the scores they were seeing, and make any configuration modifications with those in mind. For example, if the technology provider choose to submit a less secure variation, the scores would be lower but provide more flexibility for the state or locality to make safe and secure configuration changes. If the technology provider choose to submit a more secure variation, the scores would be higher but would force the state or locality to increase their security risk with configuration changes. 


### Results for Multiple Audiences

During the development of RABET-V, we learned that various states want different types of results from a central testing and verification program. Some states want the output to be a decision on whether the product version is acceptable or not. Other states was more details and raw results in order to make a decision themselves on whether the product version's security is acceptable or not. Based on our interactions, the larger, better funded states want to process the raw results and the smaller states perform a decision be made by the verifier. 

RABET-V attempts to address these various needs. First, the process produces 3 maturity indexes. The first index is the Software Development Maturity Index which provides scores in 6 areas related to the providers software development processes. The second index is the Security Services Architectural Maturity Index which providers a score for each of the 10 security services defined for RABET-V. Finally, the Security Services Capability Maturity Index provides a score for each of the 10 security services. These scores provide sufficient details for states who wish to make a decision themselves. In addition, during the pilot, the RABET-V team used these scores to make a determination of verified, conditionally verified, or not verified in order to address the needs of the other states. We believe this is the right balanced approach moving forward.

### Visibility of Results

Apart from the challenge about testing results, there is a separate question on the visibility of the testing results. To tackle this problem, we define four audiences: public, subscribers, technology providers, and partners. 


To complete.

### Converting Best Practices to Requirements

RABET-V is not specific to any set of requirements. In fact, it can be used with any appropriate security requirements. We choose to start with the best practices published as the [Security Best Practices for Non-Voting Election Technology](https://www.cisecurity.org/wp-content/uploads/2019/11/Security-Best-Practices-Non-Voting-Election-Tech-Singles-19-Nov.pdf). This guide was developed by CIS with a community of election vendors, election IT staff, and other technology experts. 

As we began to further develop RABET-V, we realized that the best practices needed to be converted into requirements. As best practices, they did not have the specific, measurable details that are necessary for conformance evaluations. We also noticed that there was significant overlap with some of the requirements and the process assessment. Since the requirements were used to measure the Security Service Capability Maturity (a separate maturity index from the Software Development Maturity produced by the process assessment), we removed these process oriented requirements. We also determined the applicability of the best practices. Some were specific to web technologies and others were specific to physical devices. Finally, we mapped each requirements to one of the ten security service families and assigned each requirement a maturity level of 1, 2, and 3. The Security Service Capability Maturity index is calculated from the number of applicable requirements were verified for the product.

The final set of requirements along with their assigned security service family and maturity level is found in the Supporting documents Requirements Master Workbook.


### Developing Testing Tiers and Matrix

RABET-V was developed on this concept that testing would vary based on the risk of the product changes made. This meant that we needed to define testing levels and identify exactly how they would be applied. The chosen approach had to ensure proper rigor is applied based on risk. 

To start, we began by developing testing levels. We decided to do this at the requirements level and vary the level of testing by varying the testing method used. We defined three testing tiers as Full, Basic, and Streamlined. Testing methods included Functional Testing, Data Audit, Penetration Testing, Configuration Audit, Documentation Review, and Artifact Review. One or more testing method was assigned to each tier for each requirement. The definitions of the testing methods and their assignment to requirement are found in the Supporting documents Requirements Master Workbook.

With the testing levels developed, we needed a consistent way to assign the testing level to the specific product revision. We decided that this needed to be done based on type of change(s) made to each security service coupled with the relevant architectural and software development maturity scores. Based on the type of change(s) to each security service component(s), a testing tier would be determined for those security service requirements. For example, if there were low risk changes made to the authentication components, the testing tier assigned would be *streamlined*. This means the streamlined testing methods would be used for each of the authentication requirements. 

To capture this, we built a list of change types and a master matrix which defines a function that calculates risk from the change type, process assessment score, and the architectural maturity score then recommends a testing tier. The master matrix and examples are available in the Support documents Security Service Testing Matrix Workbook. 

There are a couple of subtle things emphasized in our solution of testing tiers and testing matrix. First, the approach encourages technology providers to develop and maintain robust automated testing capabilities. This is because many of the streamlined and basic testing tiers use the Artifact Review test method with many of the acceptable artifacts produced from third party or unit test routines. If the technology provider can not produce those artifacts, the more intensive testing tier is used. Second, the approach encourages providers to submit smaller product revisions. This is accomplished with the ordered change list we developed (higher items are higher risk). RABET-V will select the change type most appropriate for each security service. If more than one change type applies, the higher one on the list is selected. This discourages bundling of changes into large releases and encourages small, more specific updates. 
