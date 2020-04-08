# Security Service Construction

## Maturity Level 1 (Trustworthy Components)

### Benefit

The security service is being provided through well-vetted components.

### Quality Criteria

- The trustworthyness of the security service has been vetted

### Discussion

In the vast majority of cases, the security service should be written by a reputable third party. Use of security service developed or maintained in-house must be thoroughly justified.

### Question

- Who wrote or provides the security service?
- Was it written in house?
- Was it provided by a reputable third party?

### Answers

- No, security service not vetted (no credit)
- Yes, written in house (partial credit)
- Yes, written by third party (full credit)

## Maturity Level 2 (Isolation)

### Benefit

The security service is well designed.

### Quality attributes

Exhibits loose coupling, encapsulation, and information hiding properties to allow the 1st and 2nd degree components to change without having an effect on each other. This segregates design decisions that are most likely to change in order to protect security services from modification if the design decision is changed.

### Questions

### Answers

- No (no credit)

## Maturity Level 3

There is a simple and stable interface which is not concerned with the other module's internal implementation

### Discussion

To protect against changes in the underlying implementation of the security service, it should expose stable interfaces. Ideally, it should integrate with the underlying framework used (if any). For example, an Java application implementing Authentication could use the platform's built in LoginModule. Platforms that do no provide extension points for a given security service will not be penalized.

### Questions

### Answers

- No (no credit)
- Yes, but not integrated with available framework extension point (partial credit)
- Yes, is integrated with underlying framework (full credit)
