# Security Service Usage Maturity

## Maturity Level 1

### Benefit

A single security service providing a particular set of mitigations is used within the subsystem.

### Quality criteria

There is a minimal number of components which provide the security service. This is ideally one component per technical stack or subsystem. Use of multiple components providing the same mitigations must be justified.

### Discussion

This should not be construed to discourage defense-in-depth approaches. Two security services that provide different mitigations to the same threat are acceptable. For example, a security service may provide input sanitization to defend against SQL injection. Another may provide query parameterization to defend against the same.

### Questions

- Are there multiple security services providing the same mitigation?

### Answers

- Multiple security services providing the same mitigations are used in a single subsystem (no credit)
- There is no overlap between security services and mitigations (full credit)

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

### Quality Criteria

### Discussion

### Questions

### Answers