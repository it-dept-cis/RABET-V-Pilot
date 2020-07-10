## 6.1.1

Method: HTTP Header Inspection

Applies to: All

### Test Case

Prerequites:

Tests occurs on all valid HTTP Verbs of a given url

Steps:

1. Make HTTP request against application
2. Inspect header for `Content-Security-Policy`
3. If header does not exist, FAILS
4. Inspect value of `Contest-Security-Policy`
5. [Put allowed policies here]

## 6.1.2

[Either way, uploading an invalid file is likely to fail, so it will be hard to distinguish whether it failed due to validation failures, or the code entering an expected state]

### Method 1

Method: Custom (Web Testing + Others)

Method Effectiveness: Fair

Setup: A known bad file is uploaded.

Fail case: The file is successfully uploaded. This is defined as having been stored in the file system or database.

Trust: High

### Method 2

Method: Dynamic Analysis

Method Effectiveness: Very Good

Setup: A known bad file is uploaded.

Fail case: Processing logic is applied on invalid file.

Trust: Low

## 6.1.3

Method: HTTP Header Inspection (when headers are used), HTML Inspection (when meta tags are used)

Trust: All

### Test Script

1. Make HTTP request against application
2. Inspect header for `Content-Type`
3. If header does not exist, FAILS
4. Check if charset parameter is set

5. If charset is set, then PASSES, otherwise FAILS

## 6.1.4

[Vendor will need to specify if they support dynamic code execution]

Method: Fuzzing

Method Effectiveness: Fair

[Cannot distinguish between 6.1.4 and 6.2.1]

## 6.1.5

Method: Fuzzing

Method Effectiveness: Fair

Required documentation: List of data types for each field, property, tag, etc.

[Hard to test on client side unless we know the data types (which we'll need code). At a minimum they should conform to data types, but likely should be constrained using other approaches as well]

[Client vs server side validation. Client is nice for usability, but I server level validation is what matters for security]

Method: Code Analysis

Method Effectiveness: Good

## 6.2.1

# Method 1

[Allow vendor to attest to this?]
[Cannot distinguish between 6.1.4 and 6.2.1, use Lattix artifacts as evidence?]

Method: Fuzzing

Method Effectiveness: Fair

Trust: High

# Method 2

Method: Code Analysis

Method Effectiveness: Good

Method Cost: High

Trust: Low

## 6.2.2, 6.2.3

Method: HTTP Header Inspection

Applies to: All

## 6.2.4

### Method 1

Method: Fuzzing

Method Effectiveness: Fair

Trust: High

### Method 2

Method: Code Analysis

Method Effectiveness: Good

Trust: Low

## 6.2.5

[Could be hard to run. First you'd need to be able to put JS in an HTML context, for example, which if they are doing input sanitization, may not be possible from the UI side. The workaround would be to place "injected code" directly into the database.]

Method: Custom

Method Effectiveness: Good

Test Frequencency: Attestation with Spot Checks

## 6.3.1

Method: Configuration Audit