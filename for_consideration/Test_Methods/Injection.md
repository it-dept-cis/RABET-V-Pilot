## 6.1.1

Method: HTTP Header Inspection

Applies to: All

## 6.1.2

Method: Penetration testing

Method Effectiveness:

Setup: A known bad file is uploaded. 

Fail case: The file is successfully uploaded. This is defined as having been stored in the file system or database. 

Method: Static Analysis

Fail case: Processing logic is applied on invalid file.

## 6.1.3

Method: HTTP Header Inspection

Applies to: All

## 6.1.4

Method: Fuzzing

Method Effectiveness: Fair

[Cannot distingish between 6.1.4 and 6.2.1]

Method: Code Analysis

Method Effectiveness: Good

Method Cost: High

## 6.1.5

Method: Fuzzing

Method Effectiveness: Fair

Required documentation: List of data types for each field, property, tag, etc.

[ Hard to test on client side unless we know the data types (which we'll need code). At a minimum they should conform to data types, but likely should be constrained using other approaches]

[Client vs server side validation. Client is nice for usability, but I really only care about server level validation]

Method: Code Analysis

Method Effectiveness: Good

## 6.2.1

## 6.2.2, 6.2.3

## 6.3.1

Method: Configuration Audit