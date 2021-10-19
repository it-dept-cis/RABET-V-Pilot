## Testing Rules Determination

This activity takes the results from previous activities and builds a unique set of Testing Rules for each product. These Testing Rules stay valid as long as none of the previous activities - Architecture Review, Process Assessment, and Security Claims Validation - has changes. If any of those activities are performed during the current RABET-V Iteration, the Testing Rules Determination must be performed again.

The Testing Rules are structured as a decision tree. A decision tree is a flowchart-like structure where each internal node is a “test” of a condition. Each branch represents an outcome of the test until a final node has been reached. The final node represents a decision.

In our application of decision trees, product changes are the inputs to the decision tree which are then taken through a series of questions about the change and the result is a verification method to use. The decision tree is different for each product because the master tree is simplified to only branches that are relevant for the product and provider.

### Inputs

  - Applicable Security Claims

  - Security Service Architectural Maturity Scores

  - Software Development Maturity Scores

### Outputs

  - Testing Rules Decision Tree

### Workflow

#### Initial Decision Tree

Any time the testing rules need to be created or updated, start with a copy of the master decision tree. The master decision tree has all possible outcomes, even if they are not relevant for the product.

The decision tree is currently implemented with [Silver Decisions](http://silverdecisions.pl/). The master decision tree is located in this repository at [master decision tree](https://github.com/it-dept-cis/RABET-V-Pilot/blob/master/for_consideration/Decision_Trees/decisiontree_master.json).

#### Simplify Master Tree

The master decision tree has a number of test conditions for maturity scores that are known at this point in the process. All scores other than those actually recevied during the process can be removed, simplifiying the master tree.

### Test Conditions

#### Change Attributes

These test conditions are related to where the change was made and what kind of change it is.

##### Change Location

Where is the change?

1.  Software Application Core Component - custom application developed by the RTP

1.  Software Application Supporting Component – a component used from within the RTP's software application such as a framework, library or module provided by a 3rd party

1.  Supporting Environment - system, framework, or service provided by a 3rd party used to host or run the software application

##### Change Type

What type of change is it?

1.  Add/Remove - a component was added or removed

1.  Replace - the component was replaced

1.  Interface change - either the component interface was changed or the manner why which it interfaces with other components changed

1.  Implementation/Patch -

  + For internally developed components, the internal implementation of a component was changed without impacting the interface(s)

  + For 3rd party components patch - the component was patched by its provider (only applies to 3rd party components)

Since more than one may apply, the first one that applies should be selected.

#### Architectural Considerations

These test conditions relate to how the change impacts security services.

##### Security Service Relation

Was the change in a security service related component?

1.  1st Degree Security Service component - the change was in a 1st degree security service component (1st and 2nd degree security service components are determined in the architecture review)

1.  2nd Degree Security Service component - the changes was in a 2nd degree security service component (1st and 2nd degree security service components are determined in the architecture review)

1.  None

##### Security Service Architectural Maturity

What is the architectural maturity of the security service impacted?

This uses the Security Service Architectural Maturity (SSAM) scores from the architecture review. Uses 3 options to indicate the level of maturity. The scores ranges below are just placeholders until more accurate score ranges can be determined.

  - Initial understanding and adhoc provisions: Less than 1.0

  - Increased efficiency and/or effectiveness: At least 1.0 but less than 2.0

  - Comprehensive mastery: At least 2.0

#### Software Development Considerations

These test conditions are related to the technology providers Software Development Maturity (SDM) scores and artifacts.

##### Software Assurance Maturity

How mature are the provider’s processes related to software assurance?

This uses the average score of all SAMM principles with 3 ranges. The scores ranges below are just placeholders until more accurate score ranges can be determined.

  - Initial understanding and adhoc provisions: Less than 1.0

  - Increased efficiency and/or effectiveness: At least 1.0 but less than 2.0

  - Comprehensive mastery: At least 2.0

##### 3rd Party Component Maturity

How mature is the technology provider process for vetting 3rd party components?

This uses the SAMM streams of Supplier Security and Software Dependencies with 3 ranges. The scores ranges below are just placeholders until more accurate score ranges can be determined.

  - Initial understanding and adhoc provisions: Less than 1.0

  - Increased efficiency and/or effectiveness: At least 1.0 but less than 2.0

  - Comprehensive mastery: At least 2.0

##### Internal Development and Deployment Maturity

How mature are the technology providers processes for internal development and deployment?

This uses the SAMM streams of Security Requirements, Build Process, Software Dependencies, Deployment Process, and Secret Management with 3 ranges. The scores ranges below are just placeholders until more accurate score ranges can be determined.

  - Initial understanding and adhoc provisions: Less than 1.0

  - Increased efficiency and/or effectiveness: At least 1.0 but less than 2.0

  - Comprehensive mastery: At least 2.0

##### Environment Management Maturity

How mature are the technology provider’s processes for environment management (e.g., configuration hardening, patching, and updating)?

This uses the SAMM Environment Management score with 3 ranges. The scores ranges below are just placeholders until more accurate score ranges can be determined.

  - Initial understanding and adhoc provisions: Less than 1.0

  - Increased efficiency and/or effectiveness: At least 1.0 but less than 2.0

  - Comprehensive mastery: At least 2.0

##### Software Development Artifacts

The following test conditions look at whether reliable artifacts are available.

Is there a reliable artifact available? Examples include:

  - Automated source code unit test results

  - Automated vulnerability test results

  - Manual testing artifacts (test run results, example outputs, etc)

  - Automated configuration verification results

  - Security event audit logs

  - 3rd Party security analysis results (automated or manual)
