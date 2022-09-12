## Testing Rules Determination

This activity takes the results from previous activities and builds a unique set of Testing Rules for each product. These Testing Rules stay valid as long as none of the previous activities - Architecture Review, and Process Assessment - has changes. If any of those activities are performed during the current RABET-V Iteration, the Testing Rules Determination must be performed again.

The Testing Rules are structured as a first-hit, crosstab decision table. Artifacts from earlier activities, such as Submission Review, Process Assessment and Architecture Review serve as inputs to the table. The output of the Testing Rules Determination activity is a set of test methods to be used during Product Verification. A test method is determined for each security control family.

These test methods are `Full`, `Basic`, and `Streamlined`. The names reflect the rigour that each test method applies to confirm the effectiveness of the control family, with `Full` applying the most rigour and `Streamlined` the least.

The chosen test method for a given security control family is based on the Change Type(s) identified for the product's iteration and the SAMM and SSAM scores for the product. Change Types that indicate changes to security service components will require higher SAMM and SSAM scores to receive `Basic` or `Streamlined` testing. Minor changes may receive less testing even with relatively lower SAMM and SSAM scores.

### Inputs

  - Change Type

  - Security Service Architectural Maturity Scores

  - Software Development Maturity Scores

### Outputs

  - Product Testing Rules Matrix

### Workflow


#### Pull test scores

Software Assurance Maturity Model (SAMM) and Security Service Architectural Maturity (SSAM) serve as inputs.

The scores for each Security Control Family in SSAM form the column headers of the table. The rows of the table list the change types. Each change type is associated with a score in SAMM. [provide more details here?] The first change type matching any of those identified during Submission Review [update] uniquely selects the applicable SAMM score (i.e. when more than one change type applies, the most impactful one takes precedence over the others). The SAMM score is then summed to the SSAM score for each security control family, deriving scores between 0.0 and 6.0.

#### Determine test methods

 Each numeric score is converted to a test method based on a predefined set of thresholds associated with the Change Type. These thresholds determine how high a score must be to receive a certain level of testing. For example, a product with an *Operating system patch* change type and a combined Process + Architecture Score of 2.5 or greater will receive `Streamlined` testing. However, a change of *Security patch of security service component(s)* with the same score would receive `Full` testing. The testing matrix is given below:

| Type | Change Description                                                 | Process Assessment Score Type | > 5         | 5 - 4.5     | 4.49 - 4.0  | 3.99 - 3.5  | 3.49 - 3.0  | 2.99 - 2.5  | 2.49 - 2.0 | < 2.0 |
|-------------|--------------------------------------------------------------------|-------------------------------|-------------|-------------|-------------|-------------|-------------|-------------|------------|-------|
| 1           | Other major or multiple change(s) to security service component(s) | Total                         | Full        | Full        | Full        | Full        | Full        | Full        | Full       | Full  |
| 2           | Source code change to security service component(s)                | InternalDev                   | Basic       | Full        | Full        | Full        | Full        | Full        | Full       | Full  |
| 3           | Major configuration change to security service component(s)        | EnvMgmt                       | Basic       | Basic       | Basic       | Full        | Full        | Full        | Full       | Full  |
| 4           | Security patch of security service component(s)                    | SupplyChain                   | Basic       | Basic       | Basic       | Basic       | Full        | Full        | Full       | Full  |
| 5           | Dependency updates for security service component(s)               | SupplyChain                   | Basic       | Basic       | Basic       | Basic       | Basic       | Full        | Full       | Full  |
| 6           | Minor configuration change to security service component(s)        | EnvMgmt                       | Basic       | Basic       | Basic       | Basic       | Basic       | Basic       | Basic      | Full  |
| 7           | Source code change interfacing with security service component(s)  | InternalDev                   | Streamlined | Basic       | Basic       | Basic       | Basic       | Basic       | Basic      | Full  |
| 8           | Source code change unrelated to security service component(s)      | InternalDev                   | Streamlined | Streamlined | Streamlined | Basic       | Basic       | Basic       | Basic      | Full  |
| 9           | 3rd party software patch to a non-security service component(s)    | SupplyChain                   | Streamlined | Streamlined | Streamlined | Streamlined | Streamlined | Basic       | Basic      | Full  |
| 10          | Operating system patch                                             | EnvMgmt                       | Streamlined | Streamlined | Streamlined | Streamlined | Streamlined | Streamlined | Basic      | Full  |
| 11          | Other software or configuration change                             | Total                         | Streamlined | Streamlined | Streamlined | Streamlined | Streamlined | Streamlined | Basic      | Full  |
