# Security Service Usage Maturity

## Maturity Level 1

### Benefit

A dedicated component providing a security service is used within the subsystem.

### Quality criteria

There is a minimal number of components which provide the security service. This is ideally one component per technical stack or subsystem. Use of multiple components providing the same mitigations must be justified.

### Discussion

This should not be construed to discourage defense-in-depth approaches. Two components that provide different mitigations to the same threat are acceptable. For example, a security service component may provide input sanitization to defend against SQL injection. Another may provide query parameterization to defend against the same.

### Questions

- Is there an isolated, dedicated component providing the security service for the subsystem?

### Answers

- Multiple components are involved in providing the security system in a subsystem (no credit)
- One component is used but it is not dedicated to security mitigations (partial credit)
- One dedicated component is used to provide the security system within the subsystem (full credit)

## Maturity Level 2 (Centralized configuration)

### Benefit

The security service is centrally configured.

### Quality Criteria

- The security service is configured and used consistently throughout the subsystem.
- There is one component which configures the security service provider.

### Discussion

Ideally, a single component is responsible for the configuration of the security service. This criteria rewards approaches that centralize the configuration of security services. If the security service does not support central configuration, and no wrapper has been written, no credit will be given.

### Questions

- What component(s) configure the security service?
- Is the centralized configuration overridden by other components?

### Answer

- Usually or always configured at the point of use (no credit)
- Mostly configured centrally, with some service details configured at point of use (partial credit)
- Configured centrally, or no configuration required (full credit)

## Maturity Level 3

### Benefit

The security service is used consistently and appropriately throughout the system and it is easy to verify its use.

### Quality Criteria

- The component(s) providing the security service is used by other components throughout the system, where appropriate
- Reusable components are constructed to make is easy to use the security service
- System defaults encourage or enforce the use of the security service

### Discussion

This item measures how widespread and appropriate the security service components are used in the application. Ideally, the system is setup to use the security service throughout the application and it does not have to be invoked many times by different components. Where it does need to be invoked, there are reusable components (i.e. base classes, base page, etc.) which invoke it by default.

### Questions

- How widespread and appropriate is the use of the security service?
- Are there defaults or reusable components which make it easy to use and verify the use of the security service?

### Answers

- There is little to no consistent use of the security service or it's use is missing from key components (no credit)
- There is consistent use of the security service throughout the application but it's use is not the default or easily verifiable (partial credit)
- There is consistent use of the security service which is made easy and verifiable by defaults and/or reusable components (full credit)
