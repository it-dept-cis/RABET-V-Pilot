# RABET-V Glossary
## <a name="1st-Degree-Component"></a>1st Degree Component
a component that provides or configures one of the 10 [security services](#security-service). Components are determined to be 1st or [2nd degree components](#2nd-Degree-Component) in the Architecture Review.


## <a name="2nd-Degree-Component"></a>2nd Degree Component
a component that uses one of the components which provide or configure a [security service](#security-service). Components are determined to be 1st or 2nd degree components in the Architecture Review.


## <a name="data-criticality-label"></a>data criticality label
a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of "integrity". This is measured by the impact of the data being manipulated to an unknown or incorrect value. Criticality can be determined by examining a component's exposed interfaces.


## <a name="data-sensitivity"></a>data sensitivity



## <a name="data-sensitivity-label"></a>data sensitivity label
a label indicating the sensitivity of the data the component is handling. This may be thought of as a label of "confidentiality". This is measured by the impact of the data being exposed to an unauthorized party. Sensitivity can be determined by examining a component's exposed interfaces.


## <a name="functions"></a>functions
a discrete piece of functionality provided by the [product](#product). Represented as a "[process](#process)" in Microsoft's [Threat](#threat) Modeling Tool, and a "[port](#port)" in the UML Component diagram.


## <a name="port"></a>port
a bundle of interfaces that provides system functionality.


## <a name="process"></a>process



## <a name="product"></a>product
an election technology submitt to RABET-V.


## <a name="product-revision"></a>product revision
a specific version of the [product](#product) submitted to RABET-V.


## <a name="RABET-V-Iteration"></a>RABET-V Iteration
a complete cycle through the RABET-V activities with a unique [product revision](#product-revision). The first iteration is called the Initial Iteration.


## <a name="Registered-Technology-Provider"></a>Registered Technology Provider
an organization that develops election technology and has met the minimum requirements to become a RABET-V Registered Technology Provider.


## <a name="required-security-services"></a>required security services
mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.


## <a name="security-service"></a>security service
a capability that supports one, or many, of the security goals (NIST definition). Examples of security services are key management, access control, and authentication. RABET-V defines 10 security services which are used to create the [Security Service Capability Maturity (SSCM)](#Security-Service-Capability-Maturity-(SSCM)) scores and the [Security Services Architectural Maturity (SSAM)](#Security-Services-Architectural-Maturity-(SSAM)) scores.


## <a name="Security-Service-Capability-Maturity-(SSCM)"></a>Security Service Capability Maturity (SSCM)
a set of maturity scores for each of the ten [security services](#security-service) that is one of the primary metrics reported by RABET-V.


## <a name="security-service-catalog"></a>security service catalog
a set of [security services](#security-service) identified by RABET-V to mitigate [threats](#threat).


## <a name="security-service-label"></a>security service label
mechanisms used to provide confidentiality, integrity authentication, source authentication and/or support non-repudiation of information.


## <a name="Security-Services-Architectural-Maturity-(SSAM)"></a>Security Services Architectural Maturity (SSAM)
a maturity score created by the RABET-V Architecture Review activity to indicate how well the [product](#product)'s architecture is defined to provide the [security services](#security-service).


## <a name="Security-Services-Architecture"></a>Security Services Architecture
an architectural view created in the Architecture Review which identifies components and maps them to the 10 [security services](#security-service).


## <a name="services"></a>services
a system level component that provides data processing capabilities.


## <a name="Software-Development-Maturity-(SDM)"></a>Software Development Maturity (SDM)
a maturity score measured by the RABET-V [Process](#process) Review activity to indicate maturity of the provider's software assurance processes. The RABET-V SDM score is based on the OWASP Software Assurance Maturity Model (SAMM).


## <a name="testing-rules"></a>testing rules
a set of rules specific to the technology provider and [product](#product) which determine how changes to that product will be verified during [RABET-V iterations](#RABET-V-Iteration).


## <a name="threat"></a>threat
a role of a situation that my lead to one ore more related incidents or failures.


## <a name="verification-authority"></a>verification authority
The organization responsible for overseeing and executing the RABET-V [process](#process). CIS is the Verification Authority for the pilot program.

