# Injection Prevention Requirements

In these requirements, *interpreted* is defined as: Input that may be treated as data or as code depending on its content.

## Maturity Level 1

### Use Secure HTTP Response Headers

[Public key pins is deprecated. Unclear if replacement is well supported]

To protect against cross-site scripting (XSS) and man-in-the-middle (MITM) attacks, use the Content Security Policy (CSP) and Public-Key-Pins headers.

Applies to: Web components

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.2

### Validate Uploaded Files

When accepting file uploads from the user, make sure to validate the size of the file, the file type, and the file contents as well as ensure that it is not possible to override the destination path for the file.

Applies to: Components that accept file input

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.6

### Set the Encoding for Your Application

For every page in your application, set the encoding using HTTP headers or meta tags within HTML. This ensures that the encoding of the page is always defined and that the browser will not have to determine the encoding on its own. Setting a consistent encoding, like Unicode transformation format 8 bit (UTF-8), for your application reduces the overall risk of issues like XSS.

Applies to: Web components

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.7

### Use Whitelists On Interpreted Input

For input that will be interpreted, whitelist acceptable inputs. Only inputs that appear on the whitelist will be accepted.

Applies to: Interpreted inputs (including SQL)

Method: Derived

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.10

### Validate all input

For each user input field, there should be validation on the input content.

> Examples of validation include data type validation, length validation, pattern validation, among others.

Applies to: All

Method: Derived

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.10

## Maturity Level 2

### Use Parameterized Inputs

Input to an interpreter (e.g. an SQL Engine) should be passed using parameterized input, such as a bind variable. If Dynamic SQL is constructed within stored procedures, the procedural database code must also use bind variables. For example `dbms_sql` (Oracle), `EXECUTE IMMEDIATE` (Oracle) and `execute sp_executesql` (SQL Server) allow dynamic SQL to be constructed from within stored procedures or triggers.

Applies to: Interpreted inputs

Method: Derived

Satisfies: Prefer Whitelists Over Blacklists for Input Validation

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.9

### Use the X-Frame-Options Header

Use the X-Frame-Options header to prevent content from being loaded by a foreign site in a frame. This mitigates Clickjacking attacks. For older browsers that do not support this header, add frame busting JavaScript code to mitigate Clickjacking (although this method is not foolproof and can be circumvented).

> The use of frame busting is only required for products that support browsers that do not support X-Frame-Options.

Applies to: Web components

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.1

### Use the Nosniff Header for Uploaded Content

When hosting user uploaded content that can be viewed by other users, use the X-Content-Type-Options: nosniff header so that browsers do not try to guess the data type. Sometimes the browser can be tricked into displaying the data type incorrectly (e.g., showing a GIF file as HTML). Always let the server or application determine the data type.

Applies to: Web components

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.3

### Validate the Source of Input

The HTTP method used to make a request must be validated. For example, if input is expected from a POST request, do not accept the input variable from a GET request.

Applies to: Web components

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.4

### Conduct Contextual Output Encoding

All output functions must contextually encode data before sending it to the user. Depending on where the output will end up in the HTML page, the output must be encoded differently. For example, data placed in the URL context must be encoded different than data placed in JavaScript context within the HTML page.

Applies to: Web components

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology A1.3.5

## Maturity Level 3

### Deploy Web Application Firewalls (WAFs)

Protect web applications by deploying WAFs that inspect all traffic flowing to the web application for common web application attacks. For applications that are not web-based, specific application firewalls should be deployed if such tools are available for the given application type. If the traffic is encrypted, the device should either sit behind the encryption or be capable of decrypting the traffic prior to analysis. If neither option is appropriate, a host-based web application firewall should be deployed.

Applies to: All

Method: Copy

> Reference: CIS Security Best Practices for Non-Voting Election Technology 3.2.14
