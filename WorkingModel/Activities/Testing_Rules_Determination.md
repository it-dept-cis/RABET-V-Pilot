# Testing Rules Determination

This activity takes the results from previous activities and builds a unique set of Testing Rules for each product. These Testing Rules stay valid as long as none of the previous activities - Architecture Review, Process Assessment, and Security Claims Validation - do not need to be redone. If any of those activities are performed during the current RABET-V Iteration, the Testing Rules Determination must be performed again.

The Testing Rules are structured as a decision tree.  A decision tree is a flowchart-like structure where each internal node is a "test" of a condition. Each branch represents an outcome of the test until a final node has been reached. The final node represents a decision.

In our application of decision trees, product changes are the inputs to the decision tree which are then taken through a series of questions about the change and the result is a verification method to use. The decision tree is different for each product because the questions being asked are different. There is some commonality to the decision tree structure which is discussed below, along with how the decision trees are built. 

Pilot research question: is a unique decision tree per product necessary or can we simple to get to one decision tree?

## Inputs

* Applicable Security Claims
* Security Service Architectural Maturity Scores
* Software Development Maturity Scores


## Outputs

* Testing Rules Decision Tree

## Workflow

### 1. Initial Decision Tree

Any time the testing rules need to be created or updated, there is a starting decision tree. For initial RABET-V iterations, there is a basic template ()[]. For revision iterations, the starting tree is prior the decision tree that you are updating. 

Do we begin with a master tree and then simply it based on the current scores?
What about the No security service relation? I think we use the Lattix scores possibly, and the usability maturity scores.


### 2. Modify Decision Tree

For a Initial Submission, the entire tree should be updated to reflect the initial architectural and software development maturity scores. For subsequent iterations, only portions of the tree related to the updated scores need to be changed.  

### 3. Review Decision Tree

Who can review? TAC, Steering Committee? Review Committee?

## Test Conditions

### Change Attributes
These test conditions are related to where the change was made and what kind of change it is.

#### Change Location

Where is the change?

1. Software Application Core Component - custom application develops by technology provider
2. Software Application Supporting Component - framework, library or module provided by a 3rd party used within the software application
3. Supporting Environment - system, framework, or service provided by a 3rd party used to host or run the software application  


#### Change Type

What type of change is it?

1. Add/Remove - a component was added or removed
2. Replace - the component was replaced
3. Interface change - the component interface was changed or changed how it interfaced with other components
4. Implementation/Patch - 
- For internally developed components, the internal implementation of a component was changed without impacting the interface(s) (only applies to )
- For 3rd party components patch - the component was patched by its provider (only applies to 3rd party components)

Since more than one may apply, the first one that applies should be selected.

### Architectural Considerations
These test conditions relate to how the change impacts security services.

#### Security Service Relation

Was the change in a security service related component?

1. 1st Degree Security Service component - the change was in a 1st degree security service component (1st and 2nd degree security service components are determined in the architecture review)
2. 2nd Degree Security Service component - the changes was in a 2nd degree security service component (1st and 2nd degree security service components are determined in the architecture review)
3. None

#### Security Service Architectural Maturity

What is the architectural maturity of the security service impacted? 

This uses the Security Service Architectural Maturity (SSAM) scores from the architecture review. Decision options will be 3 ranges set specifically for each product.


### Software Development Considerations
These test conditions are related to the technology providers Software Development Maturity (SDM) scores and artifacts.

#### Software Assurance Maturity

How mature are the provider's processes related to software assurance?

This uses the average score of all SAMM principles with 3 ranges set specifically for each product. 

#### 3rd Party Component Maturity 

How mature is the technology provider process for vetting 3rd party components?

This uses the SAMM streams of Supplier Security and Software Dependencies with 3 ranges set specifically for each product.

#### Internal Development and Deployment Maturity 

How mature are the technology providers processes for internal development and deployment?

This uses the SAMM streams of Security Requirements, Build Process, Software Dependencies, Deployment Process, and Secret Management with 3 ranges set specifically for each product.

#### Environment Management Maturity

How mature are the technology provider's processes for environment management (i.e. configuration hardening, patching, and updating)?

This uses the SAMM Environment Management score with 3 ranges set specifically for each product.

#### Software Development Artifacts 
The following test conditions look at whether reliable artifacts are available. 

Is there a reliable artifact available? Possible examples include:

* Automated source code unit test results
* Automated vulnerability test results
* Manual testing artifacts (test run results, example outputs, etc)
* Automated configuration verification results
* Security event audit logs 
* 3rd Party security analysis results (automated or manual)








