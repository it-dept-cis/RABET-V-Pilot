# Testing Rules Determination

This activity takes the results from previous activities and builds a unique set of Testing Rules for each product. These Testing Rules stay valid as long as none of the previous activities - Architecture Review, Process Assessment, and Security Claims Validation - do not need to be redone. If any of those activities are performed during the RABET-V Iteration, the Testing Rules Determination must be performed again.

The Testing Rules are structured as a decision tree.  A decision tree is a flowchart-like structure where each internal node is a "test" of a condition. Each branch represents an outcome of the test until a final node has been reached. The final node represents a decision.

In our application of decision trees, product changes are the inputs to the decision tree which are then taken through a series of questions about the change and the result is a verification method to use. The decision tree is different for each product because the questions being asked are different. There is some commonality to the decision tree structure which is discussed below, along with how the decision trees are built. 


## Inputs

* Applicable Security Claims
* Security Service Architectural Maturity Scores
* Software Development Maturity Scores

## Outputs

* Testing Rules Decision Tree(s)

## Workflow



## Decision Trees

I assume we will have more than one