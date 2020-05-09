# System Integrity Requirements

## Maturity Level 1

### Install the Latest Stable Version of Any Security-Related Updates on All Network Devices

Install the latest stable version of any security-related updates on all network devices.

> Ensure that you are monitoring for updates and applying them as you are able. This may require a plan to make updates prior to sensitive election dates.

Scope: Hosted components

> Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.4

### Ensure Anti-Malware Software and Signatures Are Updated

[Revert to previous wording and add hosted clause?]

The product must allow an administrator to perform updates to its anti-malware software, scanning engine and signature database on a regular basis.

> Ensure that all anti-malware instances are receiving signature updates. This requires periodic review of devices within the election technology system.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.3.2

### Configure Devices to Not Auto-Run Content

Configure devices to not auto-run content from removable media.

> This helps ensure an attacker cannot insert a malicious device and execute it without having user credentials.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.5.3

### Use USB Port Protectors on Unused Ports

Cover all unused USB ports on endpoint devices with locks or tamper-evident port protectors to ensure unauthorized USB devices are not inserted into the device.

> This is especially important for devices that are taken into less physically secure environments. It is also important to put tamper-evident seals on ports that do have a device plugged in to detect an attempt to swap a legitimate device with an illegitimate one.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.5.6

Applies to: Provider supplied hardware

Method: Copy

## Maturity Level 2

### Maintain Standard Security Configurations for Network Devices

Maintain standard, documented security configuration standards for all authorized network devices.

> This is especially important for all network devices which enforce a network boundary between the election solution and another network segment.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.1

Applies to: Vendor provided hardware

Method: Copy

### Perform Complete System Backups

[Remove?]

Ensure that all of the organization's key systems are backed up as a complete system, through processes such as imaging, to enable the quick recovery of an entire system.

> These types of backups should be done prior to each election for each type of election system used. This allows for quick recovery back to the known good version. Maintaining extra units created from these system backups is another good approach.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.4.2

### Establish Secure Configurations

Maintain documented, standard security configuration standards for all authorized operating systems and software.

> Using a vetted configuration standard, identify each component of the election technology and its secure configuration standard to use.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.1.1

### Deploy System Configuration Management Tools

Deploy system configuration management tools that will automatically enforce and redeploy configuration settings to systems at regularly scheduled intervals.

> Where possible, each component should be inspected and updated with the latest known good secure configuration prior to use in any election.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.1.5

### Deploy Automated Operating System Patch Management Tools

Deploy automated software update tools in order to ensure that the operating systems are running the most recent security updates provided by the software vendor.

> Ensure all systems are updated until it is no longer appropriate to make changes to a system before an election. Beyond this point, patches should be reviewed by security personnel and a decision should be made on whether the operational risk of patching it greater than the security risk posed by the vulnerability.

Applies to: Hosted components

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.2.4

### Deploy Automated Software Patch Management Tools

Deploy automated software update tools in order to ensure that third-party software on all systems is running the most recent security updates provided by the software vendor.

> Ensure that software is patched until it is no longer appropriate to make changes to software prior to an election. After this date, manually review patches to determine if the operational risk of patching is greater than the security risk of the vulnerability the patch fixes.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.2.5

### Utilize Centrally Managed Anti-Malware Software

[Remove?]

Utilize centrally managed anti-malware software to continuously monitor and defend each of the organization's workstations and servers.

> All endpoints in an election technology solution must use properly installed and constantly running anti-malware software. Central management allows administrators to enforce this rule.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.3.1

### Limit Access to Scripting Tools

Limit access to scripting tools (such as Microsoft PowerShell and Python) to only administrative or development users with the need to access those capabilities.

> Election technology may make use of these technologies, but access to them should be limited to only the most trusted and protected accounts.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.4.7

### Configure Anti-Malware Scanning of Removable Devices

Configure devices so that they automatically conduct an anti-malware scan of removable media when inserted or connected.

> Use of USB devices is very common in election systems. Therefore, it is critical that all external devices be scanned for malware prior to use.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 2.5.5

### Use Standard Hardening Configuration Templates for Databases

For applications that rely on a database, use standard hardening configuration templates.

> CIS Benchmarks are available for various database offerings such as SQL Server, MySQL, and PostgreSQL. Guidance for cloud-based databases are also available.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 3.2.16

## Maturity Level 3

### Verify Complete System Recovery

[Process, remove?]

Ensure that all of the organization's key systems are restored from a complete system backup, through processes such as imaging, to verify the quick recovery of an entire system.

> Full system recovery should be tested well in advance of each election for each type of election system used. This allows for verification that quick recovery back to the known good version is functioning properly.

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.4.6

### Establish DDoS Mitigation Services With a Third-Party DDoS Mitigation Provider

Obtain third-party DDoS mitigation services.

> A number of DDoS protection services have made their offerings available to election jurisdictions. Whether free or at a cost, these services can be very helpful to protect the most critical internet-connected election functions.

Applies to: Hosted components

> Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.6

### Maintain Secure Images

[Process, remove? Not really part of architecture]

Maintain secure images or templates for all components based on the selected configuration standards. Any new system deployment or existing system that becomes compromised should be imaged using one of those images or templates.

> This allows rapid and reliable deployment of election technology components.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.1.2

### Implement Automated Configuration Monitoring Systems

Utilize a Security Content Automation Protocol (SCAP) compliant configuration monitoring system to verify all security configuration elements, catalog approved exceptions, and alert when unauthorized changes occur.

> This prevents accidental misconfiguration and allows election technology providers the ability to prove the component has been properly and securely configured.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.1.4

### Enable Operating System Anti-Exploitation Features and Deploy Anti-Exploit Technologies

Enable anti-exploitation features such as Data Execution Prevention (DEP) or Address Space Layout Randomization (ASLR) that are available in an operating system, or deploy appropriate toolkits that can be configured to apply protection to a broader set of applications and executables.

> This should be considered for election technology servers and other sensitive endpoints.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.3.3

### Disable Access to USB Devices Where Possible

Disable the use of USB devices on a system to completely remove the risk of removable USB media based attacks.

> This may not be feasible for all components. It should be feasible for servers and other devices which do not use USB connected devices.

Applies to: Vendor provided hardware

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.5.7

### Use USB Write Blocker to Transfer Data Into Sensitive Systems

USB Write Blockers allow a high integrity system to read the content of a USB device while mitigating the risk of transferring any malicious payload.

> These devices should be used when transferring data into the voting system or the voter registration system using removable USB media.

> Reference: CIS Security Best Practices for Non-Voting Election Technology 2.5.8
