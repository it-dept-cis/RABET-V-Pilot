# Architecture Review Methodology

## Open Questions
What is required from pilot participants?
Who can conduct the architecture reviews?
What process will they use to conduct the architecture reviews?

Which of these checklists can we use?
https://ycnotes.com/2016/10/04/code-complete-checklists/



## Inputs
make sure there is a design representation that is actually reviewable. That doesn’t mean you need 300 pages with inch-perfect UML specifications and mathematical proofs. But it also doesn’t mean a random bunch of box and line pictures with no description of what those boxes and lines are supposed to represent. Identify the views that you need in order to depict the system qualities that are important. Then use a notation that other people understand. UML, Archimate, or whatever.

## Outcomes

What do we need to know about an architecture to understand risk and create testing rules?
* product boundaries (vertical and horizontal)



## Technical Guidance

As a reviewer you must prepare in advance checklists and scenarios that you want to test for the system qualities that you are interested in.

There are a number of good ideas in https://ycnotes.com/2016/10/03/code-complete/

### Architecture Checklist
*Specific Architectural Topics*
Is the overall organization of the program clear, including a good architectural overview and justification?
Are major building blocks well defined, including their areas of responsibility and their interfaces to other building blocks?
Are the most critical classes described and justified?
Is the data design described and justified?
Is the database organization and content specified?
Is the user interface modularized so that changes in it won’t affect the rest of the program?
Is a strategy for handling I/O described and justified?
Are resource-use estimates and a strategy for resource management described and justified for scarce resources like threads, database connections, handles, network bandwidth, and so on?
Does the architecture set space and speed budgets for each class, subsystem, or functionality area?
Does the architecture describe how scalability will be achieved?
Does the architecture address interoperability?
Is a strategy for internationalization/localization described?
Is a coherent error-handling strategy provided?
Is the approach to fault tolerance defined (if any is needed)?
Is the architecture designed to accommodate likely changes?
Does the architecture address growth/scalability?

*General Architectural Quality*
Is any part overarchitected or underarchitected? 
Does the whole architecture hang together conceptually?
Is the top-level design independent of the machine and language that will be used to implement it?

## Defensive Programming
*General*
Does the routine protect itself from bad input data?
Have you used assertions to document assumptions, including preconditions and postconditions?
Have assertions been used only to document conditions that should never occur?
Does the architecture or high-level design specify a specific set of errorhandling techniques?
Does the architecture or high-level design specify whether error handling should favor robustness or correctness?
Have barricades been created to contain the damaging effect of errors and reduce the amount of code that has to be concerned about error processing?
Have debugging aids been used in the code?
Have debugging aids been installed in such a way that they can be activated or deactivated without a great deal of fuss?
Is the amount of defensive programming code appropriate—neither too much nor too little?
Have you used offensive-programming techniques to make errors difficult to overlook during development?
*Exceptions*
Has your project defined a standardized approach to exception handling?
Have you considered alternatives to using an exception?
Is the error handled locally rather than throwing a nonlocal exception, if possible?
Does the code avoid throwing exceptions in constructors and destructors?
Are all exceptions at the appropriate levels of abstraction for the routines that throw them?
Does each exception include all relevant exception background information?
Is the code free of empty catch blocks? (Or if an empty catch block truly is appropriate, is it documented?)
*Security Issues*
Does the code that checks for bad input data check for attempted buffer overflows, SQL injection, HTML injection, integer overflows, and other malicious inputs?
Are all error-return codes checked?
Are all exceptions caught?
Do error messages avoid providing information that would help an attacker break into the system?

### Good Architecture

Minimial Complexity: Focus on “simple” and “easy-to-understand”. If you can’t safetly ignore other parts of the program, the design isn’t doing its job.
Ease of Maintenance: Think about the maintenance programmer and design the system to be self-explanatory
Loose Coupling: Hold connections to different parts of a program to a minimum. Use principles of good abstraction in class interfaces, encapsulation, and information hiding.
* Good coupling is loose enough that one module can easily be used by other modules
* Try to make modules that depend little on other modules
* Semantic coupling occurs when a module knows how another module works
* Dangerous because changes in code can cause breakage
Extensibility: Can enhance without causing violence to underlying structure. Can change a piece without affecting other pieces.
Reusability
High fan-in: High number of classes that use a given class
Low-to-medium fan-out: a given class uses low-to-medium number of other classes. Using a large number may mean its overly complex.
Portability: Easily move to another environment
Leanness: No extra parts.
Stratification: keep level of decomposition stratified so you can view the system at any single level. e.g. adding an interface layer for bad code.
Standard Techniques: Using exotic pieces will make it harder for someone trying to understand it.
Identify Areas Likely to Change 
*Identify Areas likely to change
* Separate items that are likely to change
* Isolate items that seem likely to change
* Areas Likely to Change: Business Rules, Hardware Dependencies, I/O, Nonstandard language features, Difficult design and construciton areas, Status variables, and Data-size constraints
* Design system so that the effect or scope of change is proportional to the chance that the change will occur.
* Identify the minimal subset of the program that might be of use first

## Process
Review provider given architecture diagrams

Validate important architecture aspects via inspection of system, code

Identify the critical, security providing code and the modules it is contained in (e.g. access control, data sanitization, input validation, data integrity, etc)

Identify interfaces and dependencies of the critical, security providing modules

Identify the critical data and the modules which handle the data (and their permissions)

Identify the 3rd party services or modules which are trusted

Assign labels of criticality to modules, interfaces, 3rd parties, and data 

Assign labels to trust boundaries (if any)

