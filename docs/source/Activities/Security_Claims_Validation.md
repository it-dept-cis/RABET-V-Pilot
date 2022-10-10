# Security Claims Validation

This security claims validation activity reviews whether the RTP's statements of security are sufficient for the product’s goals and expected usage. Not all applications pose the same security risks. Even similar products can have different risk profiles based on the type of data they manage and how the product is used. This activity reviews the particulars of the product to ensure the security claims match its specific risk profile. This validation activity determines if the RTP's claims make sense given the product environment and data sensitivity, and if the claims are sufficient for the given context.

Security claims are submitted by RTP's in their submission package. The Initial RTP Submission must include claims for each security requirement. Subsequent Revision Submissions can add, remove, or modify any previous security claim.

For each requirement, the RTP must include:

1.  Whether the requirement is:

    1. Met,
    1. Met, User Dependent,
    1. Partially Met,
    1. Not Met, or
    1. Not Applicable

1.  Which component or sub-systems implements the requirement, and whether it is all or a sub-set of components
1.  Rationale for any Not Applicable claims
1.  Documentation on how the security service is to be configured for any Met, User Dependent claims
1.  Implementation details
1.  Explanation for why the requirement is only partially met or partially applied to the system. In some cases simple explanations will suffice (e.g., planned for future development, lack of resources). If the RTP believes that partial implementation is sufficient, a longer explanation is necessary.

The Product Verification activity performs the verification of these claims, based on the Testing Rules created in the Testing Rules Determination activity. The Testing Rules Determination accounts for the security claims made by the RTP For instance, the testing rules will exclude requirements that are Not Applicable.

## Inputs

  - Product goals (included in RTP's submission package)
  - Product expected usage (included in RTP’s submission package)
  - Product security claims (included in RTP’s submission package)
  - Product demonstration or access
  - Security Service Component Mapping (from architecture review)

## Outputs

  - Validation or rejection of security claims sufficiency
  - List of applicable security requirements

## Workflow

### Review Product Goals, Expected Usage, and Product Functionality

This first step will review the written goals and usage from the RTP. This step should be augmented with a product demo or access to the product in a test environment. Reviewers should obtain a good sense of the high-level product functionality and validate the goals and usage consistent with the product functionality. For example, if there are use cases related to product administration, the reviewer should be able to access the administration module and exercise a few use cases.

### Review Requirements listed as Not Applicable

The requirements marked Not Applicable are reviewed to ensure that for this product the requirements are not relevant and thus the SSCM scores should not reflect a non-conformity. This is done with the aid of the threat analysis and security service component mapping from architecture review. Using the component mapping and knowledge from the product demo and expected usage, the reviewer should be able to make a determination on whether or not the requirement is valid for this product. Often times, the decision comes down to the use of certain technologies in the system. For example, if the product disabled all wireless, the requirements on using encrypted wireless are not applicable.

### Review Remaining Requirements

Once the list of applicable requirements has been determined, the reviewer will go through the applicable requirements. Using the security service component mapping and the implementation details, the reviewer can validate if the stated implementation is fully, partially, or not meeting the requirement. Requirements are fully met when the implementation of the requirement covers all the relevant components. If the implementation is only covering a portion of the relevant components, the requirement is partially met. The determination of which components are relevant is made by the reviewer.

### Determine Claim Sufficiency

In this final step, the reviewer will analyze the product’s use cases, the list of applicable requirements, and the RTP’s validated claims. If there are sensitive use cases that are not mitigated to a minimally acceptable level, the reviewer may determine that the claims are not sufficient.

> Until more guidance can be developed on what is minimally acceptable, the guidance is that any product which claims to meet all applicable maturity level 1 requirements will pass this step.

## Risk Considerations

When determining whether requirements are applicable and which components are relevant, the following considerations are used to help determine risk. This is not an exhaustive list.

### Data Criticality

Different types of data carry different levels of criticality. The following sections review some of the most critical election data elements, identify the typical lifecycle for that data, and discuss the points where its value is the highest.

- Jurisdictional: The jurisdictional data used to assign ballot contents to the correct geographical districts and polling places is most at risk when it is used to build the ballots and assign them. This puts the entire supply chain of that data leading up to ballot generation at risk.
- Voter: While voter data varies between jurisdiction, some--especially non-public voter data--is a target for identity thieves and other criminals.
- Election definition: A combination of jurisdictional information, candidate filing information, and other attributes. Once the election definition is created and approved by the jurisdiction, its integrity has critical value.
- Blank Ballot: The collection of ballot contents into ballot styles. Modification of blank ballots can disenfranchise voters or manipulate how their intent will be read by the voting machine tabulators; they are most at risk from the time they are approved by the election jurisdiction to when they are presented to the voter for marking.
- Election Results: The aggregated totals generated from voting system tabulation functions. 
Election night results are a form of unofficial election results and are at significant risk of tampering and manipulation. The outcome of such tampering would lead to widespread confusion and distrust in the correct result produced by the voting system.

### Election Operations

This consideration reviews how critical the product, and its services, are to an election’s operations. Is the product a single point of failure? What options are available as backups for election officials? Is the product used during non-peak times or peak times?
