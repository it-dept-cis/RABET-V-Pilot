# Security Services Capability Maturity Index

The SSCM Index provides a maturity score for each of ten security control families. The scores range from 0 to 3, where 3 is the best.

The scores are based on how well the product revision meets the security requirements set forth for each security control family. The requirements are pass/fail. Any assumptions made about the configuration or setup of the product must be documented with the result.

The scores are calculating for each security control family by taken the percentage of applicable requirements met at each maturity level and dividing that percentage by 100 resulting in a value between 0 and 1. Then, those values are summed to achieve a result between 0 and 3. This means that meeting 100% of maturity level 1 will result in 1.0 value which is added to the result for maturity levels 2 and 3. 


# Testing Methods
Below is a non-exhaustive list of different types of tests that could be leveraged in the  process of verifying the security controls


- **Fuzzing** Test of the application's ability to accept a wide variety of inputs without causing it to enter an unexpected or undefined state.
- **Penetration Testing** Test the applications resistance to various forms of common attacks	
- **Functional Testing**	Test that evaluates the functionality of a component against a design specification. Can be automated, but because the function will be implemented differently by each product, a custom test script may be required for each.
- **Web Testing**	A functional test that exercises one or more parts of the web stack and verifies the expected output.
- **Failover and restore testing**	Test that evaluates the resiliency of a system by making components of the system inoperable and evaluating the result.
- **Code analysis**	A white box test involving the use of code artifacts, such as source code or unobfuscated binaries in order to verify certain properties.
- **BOM Analysis**	Analysis of the bill of materials, such as software and their versions.
- **Configuration Audit**	Test to verify that the configuration of a component is configured as required.
- **Data Audit**	Test to verify the presence or absence of certain records, such as the inappropriate collecting of PII or the lack of authentication logs, can be combined with Functional Testing to provide a higher level of confidence
- **Attestation**   A guided interview is conducted with vendor to confirm existence of security control