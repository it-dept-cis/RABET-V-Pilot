# Security Service Construction Maturity

## Maturity Level 1

### Benefit

The security service is being provided through well-vetted components.

### Quality Criteria

- The trustworthiness and reliability of the security service components have been vetted

### Discussion

In the vast majority of cases, the security service components should be written by a reputable third party. Use of security service components developed or maintained in-house must be thoroughly justified.

### Question

- Who wrote or provides the security service components?
- Was it written in house?
- Was it provided by a reputable third party?

### Answers

- No, security service not vetted (no credit)
- Yes, written in house (partial credit)
- Yes, written by third party (full credit)

## Maturity Level 2

### Benefit

The security service components are well documented.

### Quality criteria

- Proper usage of the security service component can be determined from documentation
- Illustrative examples of the security service are provided

### Questions

- Is the security service well documented?

### Answers

- No documentation (no credit)
- Limited, inadequate documentation (partial credit)
- Comprehensively documented (full credit)

## Maturity Level 3

### Benefit

There is a consistent and stable interface that integrates well with the chosen technology framework.

### Quality Criteria

- The security service API is clear and consistent
- The API provides required features in a straightforward manner (i.e. no unnecessary complexity)
- The security service provides interfaces that work with chosen technology stack

### Discussion

To protect against changes in the underlying implementation of the security service, it should expose stable interfaces. Ideally, the security service should integrate with the underlying framework used (if any). For example, an Java application implementing Authentication could use the platform's built in LoginModule. Platforms that do no provide extension points for a given security service will not be penalized.

### Questions

- Does the security service provide and consistent interface?
- Does the interface integrate with the chosen technology stack?

### Answers

- No (no credit)
- Yes, but not integrated with available framework extension point (partial credit)
- Yes, is integrated with underlying framework (full credit)
