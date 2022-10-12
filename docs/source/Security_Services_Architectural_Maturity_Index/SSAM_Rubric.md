
# Rubric

## Reliability and Quality

The Component (or the substantial logic thereof) is provided by a
reputable party and actively maintained.

  - 0 – Written in-house with minimal documentation or third-party component that is uncommon and/or not actively supported

  - 1 – Vetted component is used, but is not a current versionThird-party component is used, but may not be a current version or actively supported 

  - 2 – Mature, vetted component with multiple active contributorsMature, third-party component with multiple active contributors; configured by secure best practices/guidelines

  - 3 – Using a mature, third-party component, actively supported by a professional community/organization, and is enforced by technical or procedural controls

## Manageability and Consistency

The Component is: Centrally managed by the provider, configurations are tuned with best practices, configurations are enforced, and the configuration is under full change management with attribution.

  - 0 – Component does not exhibit any of the criteria

  - 1 – Component exhibits one or two criteria

  - 2 – Component exhibits three of the criteria

  - 3 - Component exhibits all four criteria

## Maintainability: Modularity

Component is segregated from other components at the system level and
dedicated to providing its security service

  - 0 – no segregation, not separated into own library

  - 1 – separated into library (inclusive of namespace segregation)

  - 2 – separated process, same execution environment as protected
    component

  - 3 – separate unit of deployment (cloud service, or physically)

## **Maintainability: Isolation** (Composite Services Only)

Access to the security service component is mediated through a central
software component.

  - 0 – No use of
    [façade](https://refactoring.guru/design-patterns/facade) or
    [proxy](https://refactoring.guru/design-patterns/proxy) class

  - 1 – Partial use of façade or proxy class

  - 2 – Consistent use of façade or proxy class

  - 3 – Invocation of security service is handled by global handler,
    framework or platform (i.e. it is written in such a way that its
    usage is guaranteed)

## Depth

Component is segregated from other components and reusable inside other components. Components are complimentary to provide a consistent, layered defense for the overall system. There should are not be multiple versions or flavors variations of the security service component unless absolutely necessary.  

  - 0 – Components coverage is lacking and/or haphazardly applied

  - 1 – Component coverage has gaps, is managed inconsistentlyComponent coverage has gaps, is managed inconsistently, and is not segregated

  - 2 – Components coverage has minimal gaps, some layeringComponent coverage has minimal gaps, some layering and segregation, and part of a repeatable process

  - 3 – Components are intentional, built into layersComponents are intentional, built into layers, part of a repeatable/auditable process, and tested regularly

# Rubric Configuration

Each use of a security service is scored separately (excepting depth).
For example, if Log4Net and EnterpriseLibrary.Logging were used as
Logging and Alerting Services, each would be scored separately across
the measures below.

Scoring is based on three measures, with maintainability broken down
into modularity (for system level services) and isolation (for
software-only or composite services). Depth is scored once per security
service type, at the aggregate level only.

Table 1 - Rubric configuration per use of security service
provider

| TYPE        | RELIABILITY | CONSISTENCY | MODULARITY      | ISOLATION     | EXAMPLE                      |
| ----------- | ----------- | ----------- | --------------- | ------------- | ---------------------------- |
| Transparent | x           | x           | x               |               | Firewall                     |
| Composite   | x           | x           | Service Only    | Software Only | Azure AD integrated with App |
