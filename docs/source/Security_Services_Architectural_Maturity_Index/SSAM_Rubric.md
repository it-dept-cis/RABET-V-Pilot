
# Rubric

## Reliability

The Component (or the substantial logic thereof) is provided by a
reputable party and actively maintained.

  - 0 – Component is unvetted

  - 1 – Vetted component is used, but is not a current version

  - 2 – Mature, vetted component with multiple active contributors

  - 3 – Using a mature, vetted component, actively supported or approved
    by a professional community/organization

## Manageability and Consistency

The Component’s configuration is centrally managed by the provider and
the configuration is under full change management with attribution.

  - 0 – Component does not exhibit any of the criteria

  - 1 – Component exhibits one criterion

  - 2 – Component exhibits both criteria

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

Components are complementary to provide a consistent, layered defense
for the overall system. There should not be multiple versions or flavors
of the security service component unless absolutely necessary.

  - 0 – Components coverage is lacking and/or haphazardly applied

  - 1 – Component coverage has gaps, is managed inconsistently

  - 2 – Components coverage has minimal gaps, some layering

  - 3 – Components are intentional, built into layers

# Rubric Configuration

Each use of a security service is scored separately (excepting depth).
For example, if Log4Net and EnterpriseLibrary.Logging were used as
Logging and Alerting Services, each would be scored separately across
the measures below.

Scoring is based on three measures, with maintainability broken down
into modularity (for system level services) and analyzability (for
software-only or composite services). Depth is scored once per security
service type, at the aggregate level only.

Table 1 - Rubric configuration per use of security service
provider

|             |             |             | MAINTAINABILITY |               |                              |
| ----------- | ----------- | ----------- | --------------- | ------------- | ---------------------------- |
|             | RELIABILITY | CONSISTENCY | MODULARITY      | ISOLATION     | EXAMPLE                      |
| Transparent | x           | x           | x               |               | Firewall                     |
| Composite   | x           | x           | Service Only    | Software Only | Azure AD integrated with App |
