# Security Services Architectural Maturity Index

The SSAM index provides scores indicate how well the product’s architecture is built to support each security service. This is a measure of the reliability of the security service and how isolated the security service is from other system changes. These maturity scores are measured during the RABET-V Architecture Review.

The SSAM Index provides a maturity score for each of ten security control families. The scores range from 0 to 3, where 3 is the best.

The SSAM Index provides maturity scores across [four measures](/Security_Services_Architectural_Maturity_Index/SSAM_Rubric).

## Definitions

### Composite Service

A service that is composed of two or more coupled security service
components in order to provide functionality. Most composites will
consist of a security service that surfaces at the system level (core
service), and an adaptor that uses that service (dependent service).

### Composite Service, configured as software only

A service that has been identified as a composite in the reference
architecture, but the technology provider is using a software-only
service.

### Transparent Service

A security service that is not directly or indirectly invoked by vendor
software.
