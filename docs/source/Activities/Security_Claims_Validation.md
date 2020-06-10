## Security Claims Validation

This security claims validation activity reviews whether the technology provider’s statements of security are sufficient for their product’s goals and expected usage. Not all applications pose the same security risks. Even similar products can have different risk profiles based on the type of data they manage and how the product will be used. This activity reviews the particulars of the product to ensure the security claims match its specific risk profile. This validation activity determines if the provider’s claims make sense given the product environment and data sensitivity, and if the claims are sufficient for the given context.

Security claims are submitted by providers in their submission package. The Initial Provider Submission must include claims for each security requirement. Subsequent Revision Submissions can add, remove, or modify a previous security claim, as necessary.

For each requirement, the provider must include:

1.  Whether the requirement is:

    1. Met,
    1. Partially Met,
    1. Not Met, or
    1. Not Applicable

1.  Which component or sub-systems implements the requirement, and whether it is all or a sub-set of components

1.  Rationale for Not Applicable (only if Not Applicable is claimed)

1.  Implementation details

1.  Explanation for why the requirement is only partially met or partially applied to the system. Simple explanations can be used (i.e. planned for future development, lack of resources, etc.) If the provider believes that partial implementation is sufficient, a longer explanation is necessary.

The Product Verification activity performs the verification of these claims, based on the Testing Rules created in the Testing Rules Determination activity. The Testing Rules Determination accounts for the security claims made by the provider. For instance, the testing rules will exclude requirements which are Not Applicable.

### Inputs

  - Product goals (included in provider’s submission package)

  - Product expected usage (included in provider’s submission package)

  - Product security claims (included in provider’s submission package)

  - Product demonstration or access

  - Security Service Component Mapping (from architecture review)

### Outputs

  - Validation or rejection of security claims sufficiency

  - List of applicable security requirements

### Workflow

#### Review Product Goals, Expected Usage, and Product Functionality

This first step will review the written goals and usage from the provider. This step should be augmented with a product demo or access to the product in a test environment. Reviewers should obtain a good sense of the high-level product functionality and validate the goals and usage and consistent with the product functionality. For example, if there are use cases related to product administration, the reviewer should be able to access the administration module and exercise a few use cases.

#### Review Requirements listed as Not Applicable

The requirements marked Not Applicable are reviewed to ensure that for this product the requirement is not relevant and thus the SSCM scores should not reflect non-conformance in its numbers. This is done with the aid of the threat analysis and security service component mapping from architecture review. Using the component mapping and knowledge from the product demo and expected usage, the reviewer should be able to make a determination on whether or not the requirement is valid for this product. Often times, the decision comes down to the use of certain technologies in the system. For example, if the product disabled all wireless, the requirements on using encrypted wireless are N/A.

#### Review Remaining Requirements

Once the list of applicable requirements has been determined in the prior step, the reviewer will go through the applicable requirements one security service at a time. Using the security service component mapping and the implementation details, the reviewer can validate if the stated implementation is fully, partially, or not meeting the requirement. Requirements are fully met when the implementation of the requirement covers all the relevant components. If the implementation is only covering a portion of the relevant components, the requirement is partially met. The determination of which components are relevant is made by the reviewer.

#### Determine Claim Sufficiency

In this final step, the reviewer will analyze the product’s use cases, the list of applicable requirements, and the provider’s validated claims. If there are sensitive use cases which are not being mitigated to a minimally acceptable level, the reviewer may determine that the claims are not sufficient.

> Until more guidance can be developed on what is minimally acceptable, the guidance is that any product which claims to meet all applicable maturity level 1 requirements will pass this step.

### Risk Considerations

When determining whether requirements are applicable and which components are relevant, the following considerations are used to help determine risk. This is not an exhaustive list.

#### Data Sensitivity

For this consideration, we review the data that the system processes and how critical the data is to make available (availability), keep confidential (confidentiality), or keep authoritative (integrity). The following sections review some of the most critical election data elements, identify the typical lifecycle for that data, and discuss the points where its value is the highest.

##### Jurisdictional

Jurisdictional data is persistent and defines an election jurisdiction. This includes information about the structure of the jurisdiction such as districts, precincts, and offices. This information is often contained within the county voter registration or election management system and shared with other systems that consume it. When elections are built, a snapshot of this information is used to help define the election. This data is key to building correct ballots and ensuring that voters can vote for the correct candidates and issues. The jurisdictional data used to assign ballot contents to the correct geographical districts and polling places is most at risk when it is used to build the ballots and assign them. This puts the entire supply chain of that data leading up to ballot generation at risk.

##### Voter

Voter information is persistent data that identifies eligible voters and their attributes to help the jurisdiction interact with each voter. This data is managed in the state or locality voter registration systems. Depending on the state, the data flow between state and locality voter registration systems varies with the consistent goal of keeping both systems in sync. Voter data is then consumed by various software applications that interact with voters. This includes electronic pollbooks, electronic ballot delivery systems, online voter registration portals, sample ballot lookup portals, and others. Only certain fields—not the entire voter record—are shared with these other software applications.

Voter information has full, filtered, and public versions. In most states, registering to vote requires the sharing of personal information such as Social Security number (SSN) and driver’s license number. These data elements combine with the voter name, address(es), and other attributes to constitute the full version of the voter record. Most states consider voter registration records to be public, but some of the sensitive information such as SSNs are redacted. This version is known as the public version. Various other filtered formats are available for products that use voter information. For example, electronic pollbooks may require voter records with the driver’s license number but not the SSN. Distinguishing between these versions is important when discussing risks.

Full voter records are at risk throughout their lifecycle due to their value in perpetuating identity theft. They are also in danger of manipulation in the voter registration system because it is the source of voter records for all other systems. Other forms of voter records used for voter eligibility are at most risk of manipulation or deletion when they are transferred and used in electronic ballot delivery or electronic pollbooks. Even though certain sensitive data fields are removed, the data is still extremely valuable for an attacker who may wish to alter a voter’s eligibility to vote or impact for whom they can vote. While these downstream uses of voter records could always refresh themselves from the voter registration database, a well-timed attack on the local version of the voter records could be very impactful.

##### Election

Election data is a combination of jurisdictional information, candidate filing information, and other attributes. Elections are defined by the offices and issues that will appear on the ballot along with their eligible candidates and options. Though there is no definitive composition of an election definition, many refer to the election data as the election definition. Each technology implementation will have a unique specification for an election definition.

Typically, the Election Management System (EMS) creates the election by combining disparate pieces from multiple systems. The term EMS is itself used differently in various places. In some instances, the EMS is an online system often embedded in the voting registration system where the state and counties collaborate to define the election or parts of the election.

In other instances, there is a component of the county voting system that is called the EMS. This is the part of the voting system that finalizes the election and builds the ballots. In all cases, the term refers to a system that contributes to the definition of the election in part or in whole. Also, consistently, the EMS is responsible for communicating the election definition with various consumers. These consumers include public communication channels, ballot marking devices, ballot tabulators, and ballot printers.

Election definitions created by voting systems typically define the construction of the ballots and the rules by which poll workers and voters interact with the ballots. In some cases, the election definition may also include configuration data for election security—keys, passwords, PINs, etc.—and how to tabulate ballots. The election definition is what is used to program the various technology components of a voting system. Once the election definition is created and approved by the jurisdiction, its integrity has critical value. Modifications to the election definition can significantly alter how the election is conducted and the outcome of the process.

##### Ballot (blank)

Blank ballot data is the collection of ballot contents into ballot styles and may take the form of structured data or printable forms like PDFs. Ballot data is a subset of election data but is separated for our purposes because you will often find ballot data isolated from election data. When isolated from election definitions, ballot data has a unique risk profile. Ballot data is often created by the voting system’s election management function and is then distributed to various consumers. This includes ballot printing companies, on-demand ballot printers, ballot marking devices, and electronic ballot delivery systems.

Modification of blank ballots can disenfranchise voters or manipulate how their intent will be read by the voting machine tabulators. For example, a blank ballot could be altered to switch the order of candidates. The election definition is programmed to read the ovals in the original order, but the voter marks the ovals according to what they see on their ballot. This will cause their vote to be attributed to the wrong candidate. Blank ballots are most at risk from the time they are approved by the election jurisdiction to when they are presented to the voter for marking.

##### Election Results

Election results are the aggregated totals generated from voting system tabulation functions. These typically come in summary and detailed versions. The most common detailed version is precinct-level results, but this may also refer to results by district. Election results are generated by the voting system in various individual machines and then aggregated into a central result reporting function of the voting system. Election results are initially considered “unofficial” and then go through a canvassing process that will certify the results as official. The canvassing process differs based on state law and by office.

Most people recognize the lifecycle of election results as beginning when the polls close on election night. In fact, the lifecycle begins when the first ballot is cast in the election, which may be weeks before Election Day. As soon as the first ballot is scanned, the tabulator will store results including a ballot image in most systems. The results are maintained and updated on individual machines until they are aggregated by the election jurisdiction. Typically, the election jurisdiction will wait until polls close on election night to aggregate results from the individual tabulators into a results reporting system. This can be done one of three ways. First, the results can be manually entered from results tapes. Second, the removable media from the tabulator can transfer the results to the results reporting system. Third, the results may be remotely transferred from the tabulator. The last option is only available in some states and is only used for tabulators used on Election Day.

Once an election jurisdiction aggregates the results it has when polls close on election night, those results are transferred from the voting system to an election night reporting solution. The voting system is typically offline, and the election night reporting solution is an online system. This transfer is typically done using USB-based removable media. Once the results are on an election night reporting solution, they are made available to the public using an election night reporting website. For the most part, the risk to election results is the risk to their integrity. However, it is equally important to protect the confidentiality of election results prior to polls closing.

Election night results are a form of unofficial election results. Those results are special because they don’t go through rigorous review, are stored and displayed from internet-connected web servers, and are sometimes aggregated from results sent by vote tabulators over public networks. Nevertheless, they are immediately trusted by the public. As such, these results are at significant risk of tampering and manipulation. The outcome of such tampering would lead to widespread confusion and distrust in the correct result produced by the voting system.

#### Election Operations Criticality

This consideration reviews how critical the product, and its services, are to an election’s operations. Is the product a single point of failure? What options are available as backups for election officials? Is the product used during non-peak times or peak times?
