# Boundary Protections Requirements

## Maturity Level 1

### Deny Communications with Known Malicious IP Addresses

Deny communications with known malicious or unused Internet IP addresses. Limit access to trusted and necessary IP address ranges at each of the organization's application and network boundaries.

>This can be done using a network firewall at the perimeter of your election network. Preventing access from known malicious IP addresses can be done for all election applications, even public facing ones. The Election Infrastructure Information Sharing and Analysis Center (EI-ISAC) provides list of known malicious IP addresses.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.3

### Deny Communication over Unauthorized Ports

Deny communication over unauthorized transportation control protocol (TCP) or user datagram protocol (UDP) ports or application traffic to ensure that only authorized protocols are allowed to cross each of the organization's network boundaries.

>Election system boundaries should be configured to deny traffic on all ports except ports explicitly needed for legitimate traffic.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.4

### Deploy Network-Based IDS Sensors

Deploy network-based Intrusion Detection Systems (IDS) sensors to look for unusual attack mechanisms and detect compromise of these systems at each of the organization's network boundaries.

>The EI-ISAC and the Albert sensors together capture and monitor networks traffic of election jurisdictions. Election technology deployed outside of the jurisdictions' network should have a similar technology deployed and monitored.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.6

### Document Traffic Configuration Rules

All configuration rules that allow traffic to flow through network devices should be documented in a configuration management system with a specific business reason for each rule, a specific individual's name responsible for that business need, and an expected duration of the need.

>This is important for production networks that host election solutions. Exceptions are normal but should be few and must be removed when no longer necessary. This is one good reason to keep general purpose workstations in a separate network segment.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.2

### Use MFA for managing Network Infrastructure

Manage Network Infrastructure Using Multifactor Authentication and encrypted sessions

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.5

### Configure Perimeter Devices to Prevent Common Types of Attacks

Define strict "TCP keepalive" and "maximum connection" on all perimeter devices, such as firewalls and proxy servers. This assists with preventing the success of SYN Flood attacks. Another approach is leveraging SYN cookies to prevent TCP SYN floods.

>A SYN Flood is one of the most common forms of DDoS attacks observed by the MS-ISAC.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.4

### Disable Wireless Access on Devices if it is Not Required

Disable wireless access on devices that do not have a business purpose for wireless access.

>Disable all wireless options on election technology devices that are not authorized to use wireless. Periodically review device settings to ensure wireless options (Wi-Fi, Bluetooth, etc.) remain off.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.4

### Documentation Clearly Identifies Wireless Capabilities

Product documentation clearly defines any required wireless capability associated with the product along with information regarding the security and management of those wireless capabilities.

>Identify election technology that uses a wireless connection, and document each access point. For Wi-Fi, this will be a Wi-Fi router and any endpoint devices. For Bluetooth and NFC, this may be multiple devices. The decision to enable wireless technology should be made by the election administrator using a risk-based decision-making process.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.1

### Provide Dedicated Wireless Networks

Create a separate wireless network for each separate use. Access from the wireless network should be treated as untrusted and filtered and audited accordingly.

>Use of any wireless technology in election technology should be isolated for a very specific purpose, and incoming connections from the wireless network should be handled with care.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.10

### Disable Wireless Peripheral Access to Devices

Disable wireless peripheral access of devices (such as Bluetooth and NFC), unless such access is required for a business purpose.
>Printers and other peripherals often have Bluetooth capabilities.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.9

## Maturity Level 2

### Enable Firewall Logging

Enable firewall logging of accepted and denied traffic to determine where a DDoS may be originating from.

>Most election technology must be careful not to block based on IP address unless there is evidence of malicious behavior.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.3

### Configure Devices to Detect and Alarm on Traffic Anomalies

Configure firewalls and intrusion detection/prevention devices to alarm on traffic anomalies. Establish and regularly validate baseline traffic patterns (volume and type) for public-facing websites.

>Active and automated monitoring during peak election periods is critical to early detection and mitigation of DDoS attacks.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.5

### Limit Wireless Access on Client Devices to only Authorized Wireless Networks

Configure wireless access only on client machines that have an essential wireless business purpose. Allow access only to authorized wireless networks, and restrict access to other wireless networks.

>All Wi-Fi connected election technology devices must only connect to the authorized wireless access point and no other.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.5

### Disable Peer-to-Peer Wireless Network Capabilities on Wireless Clients

Disable peer-to-peer (ad hoc) wireless network capabilities on wireless clients.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.6

### Segment the Network Based on Sensitivity

Segment the network based on the label or classification level of the information stored on the servers, and locate all sensitive information on separated Virtual Local Area Networks (VLANs).

>Consider establishing unique networks for each election technology and service offering.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.5

### Apply Upstream Port and Packet Size Filtering

Have upstream network service provider or network appliance apply port and packet size filtering to limit unnecessary traffic to the product's network infrastructure.

>Work with upstream providers to filter out as much as possible that is not related to the election service being provided.

Applies to: Hosted Components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.2

## Maturity Level 3

### Deploy Network-Based Intrusion Prevention Systems

Deploy network-based Intrusion Prevention Systems (IPS) to block malicious network traffic at each of the organization's network boundaries.

>This should be applied to all network-connected election technology. It must be monitored and configured to ensure it does not prevent legitimate traffic.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.7

### Manage All Vendor-issued Devices Remotely Accessing sensitive networks

Scan all vendor issued devices remotely logging into the organization's network prior to accessing the network to ensure that each of the organization's security policies has been enforced.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.12

### Manage System's External Removable Media's Read/Write Configurations

Configure systems not to write data to external removable media, if there is no business need for supporting such devices.

>This prevents someone with physical access to a system storing sensitive information from extracting that information onto a USB drive.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.7

### Limit Workstation-to-Workstation Communication

When not in use, limit workstation-to-workstation communication using technologies such as private VLANs or micro-segmentation.

>Whenever possible, workstations should be limited to talking only to servers thereby limiting lateral movement between workstations.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.7

### Use Wireless Authentication Protocols That Require Mutual, Multifactor Authentication

Ensure that wireless networks use authentication protocols such as Extensible Authentication Protocol-Transport Layer Security (EAP/TLS) that requires mutual, multifactor authentication.

>Use of wireless technology in election technology demands that all parties be properly and fully authenticated.

Applies to: On-prem components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.8

### Limit Access to Trusted IP Address Ranges

By applying an allowlist of known trusted IP addresses this allows organizations to greatly reduce their attack surface.

>This can be done using a network firewall at the perimeter of your election network. Preventing access from known malicious IP addresses can be done for all election applications, even public facing ones. The Election Infrastructure Information Sharing and Analysis Center (EI-ISAC) provides list of known malicious IP addresses.

Applies to: Hosted components


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.3
