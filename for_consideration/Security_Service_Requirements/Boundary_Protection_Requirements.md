# Boundary Protections Requirements

## Maturity Level 1 
- Application boundaries, such as network boundaries and APIs are inventoried - Maintain an up-to-date inventory of all of the organization's network  and API boundaries. [Not sure if this makes sense from an application/product stand point. For SaaS platforms, the network boundary kinda makes sense and the API boundaries might. Alternative is to remove this one]
>Deployments of election technology should be segregated into their own network segment. These should be known and kept up to date. If the application needs to provide access through an API or similar types of interfaces then those boundaries are also captured

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.1

- Require all infrastructure maintenance Use Multi-Factor Authentication and Encryption - Require that all remote administration to the organization's network and systems use multifactor authentication (MFA) and be encrypted. [I may think we can cut this, since it overlaps with network one. The use of MFA for remote access should be part of their general security practices and since only folks managing the infrastructure, which define below, or administrative users, which we define in Authentication already require MFA, this might be duplicative]
>Remote access to election technology should be limited to select personnel who are authenticated via MFA over encrypted channels.

Applies to: Hosted components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.11

- Deny Communications with Known Malicious IP Addresses - Deny communications with known malicious or unused Internet IP addresses. Limit access to trusted and necessary IP address ranges at each of the organization's network boundaries.
>This can be done using a network firewall at the parameter of your election network. Preventing access from known malicious IP addresses can be done for all election applications, even public facing ones. The Election Infrastructure Information Sharing and Analysis Center (EI-ISAC) provides list of known malicious IP addresses.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.3
- Deny Communication over Unauthorized Ports - Deny communication over unauthorized transportation control protocol (TCP) or user datagram protocol (UDP) ports or application traffic to ensure that only authorized protocols are allowed to cross each of the organization's network boundaries.
>Election system boundaries should be configured to deny traffic on all ports except ports explicitly needed for legitimate traffic.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.4
- Deploy Network-Based IDS Sensors - Deploy network-based Intrusion Detection Systems (IDS) sensors to look for unusual attack mechanisms and detect compromise of these systems at each of the organization's network boundaries.
>The EI-ISAC and the Albert sensors together capture and monitor networks traffic of election jurisdictions. Election technology deployed outside of the jurisdictions' network should have a similar technology deployed and monitored.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.6
- Document Traffic Configuration Rules - All configuration rules that allow traffic to flow through network devices should be documented in a configuration management system with a specific business reason for each rule, a specific individual's name responsible for that business need, and an expected duration of the need.
>This is important for production networks that host election solutions. Exceptions are normal but should be few and must be removed when no longer necessary. This is one good reason to keep general purpose workstations in a separate network segment. 

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.2
- Manage Network Devices Using Multifactor Authentication and Encrypted Sessions - Manage all network devices using MFA and encrypted sessions.
>The ability to manage network devices should be limited to authorized personnel accessing the management interface locally or using MFA in encryption sessions.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.5
- Port and Packet Size Filtering - Consider port and packet size filtering by the upstream network service provider.
>Work with upstream providers to filter out as much as possible that is not related to the election service being provided.

Applies to: Hosted Components

Method: Copy


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.2
- Configure Perimeter Devices to Prevent Common Types of Attacks - Define strict �TCP keepalive� and �maximum connection� on all perimeter devices, such as firewalls and proxy servers. This assists with preventing the success of SYN Flood attacks.
>A SYN Flood is one of the most common forms of DDoS attacks observed by the MS-ISAC.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.4

- Maintain an Inventory of Authorized Wireless Access Capabilities - Maintain an inventory of authorized wireless access capabilities connected to the infrastructure.
>Identify election technology that uses a wireless connection, and document each access point. For Wi-Fi, this will be a Wi-Fi router and any endpoint devices. For Bluetooth and NFC, this may be multiple devices. The decision to enable wireless technology should be made by the election administrator using a risk-based decision-making process.

Applies to: On-prem components

Method: Derived 

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.1
- Dedicated wireless networks - Create a separate wireless network for each separate use. Access from the wireless network should be treated as untrusted and filtered and audited accordingly.[IF we really want dedicate wireless environment, then we would need mutual authentication, I suggest removing this one]
>Use of any wireless technology in election technology should be isolated for a very specific purpose, and incoming connections from the wireless network should be handled with care.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.10
- Disable Wireless Access on Devices if it is Not Required - Disable wireless access on devices that do not have a business purpose for wireless access.
>Disable all wireless options on election technology devices that are not authorized to use wireless. Periodically review device settings to ensure wireless options (Wi-Fi, Bluetooth, etc.) remain off.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.4
- Disable Wireless Peripheral Access to Devices - Disable wireless peripheral access of devices (such as Bluetooth and NFC), unless such access is required for a business purpose.
>Printers and other peripherals often have Bluetooth capabilities that should be disabled unless absolutely necessary.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.9


## Maturity Level 2 


- Enable Firewall Logging - Enable firewall logging of accepted and denied traffic to determine where the DDoS may be originating from.
>Most election technology must be careful not to block based on IP address unless there is evidence of malicious behavior.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.3
- Configure Devices to Detect and Alarm on Traffic Anomalies - Configure firewalls and intrusion detection/prevention devices to alarm on traffic anomalies. Establish and regularly validate baseline traffic patterns (volume and type) for public-facing websites.
>Active and automated monitoring during peak election periods is critical to early detection and mitigation of DDoS attacks.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.5
- Limit Wireless Access on Client Devices - Configure wireless access only on client machines that do not have an essential wireless business purpose. Allow access only to authorized wireless networks, and restrict access to other wireless networks.
>All Wi-Fi connected election technology devices must only connect to the authorized wireless access point and no other.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.5
- Disable Peer-to-Peer Wireless Network Capabilities on Wireless Clients - Disable peer-to-peer (ad hoc) wireless network capabilities on wireless clients.
>If Bluetooth and other peer-to-peer protocols are not actively being used, they should be disabled.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.6

- Segment the Network Based on Sensitivity - Segment the network based on the label or classification level of the information stored on the servers, and locate all sensitive information on separated Virtual Local Area Networks (VLANs).
>Consider establishing unique networks for each election technology and service offering.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.5


## Maturity Level 3

- Deploy Network-Based Intrusion Prevention Systems - Deploy network-based Intrusion Prevention Systems (IPS) to block malicious network traffic at each of the organization's network boundaries.
>This should be applied to all network-connected election technology. It must be monitored and configured to ensure it does not prevent legitimate traffic.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.7

- Manage All Devices Remotely Logging into Internal Network - Scan all enterprise devices remotely logging into the organization's network prior to accessing the network to ensure that each of the organization's security policies has been enforced in the same manner as local network devices.
[This might another to cut]
>Limit the number of devices that are connected to election technology network segments and keep standard business networks separate.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.12
- Manage System's External Removable Media's Read/Write Configurations - Configure systems not to write data to external removable media, if there is no business need for supporting such devices.
>This prevents someone with physical access to a system storing sensitive information from extracting that information onto a USB drive.

Applies to: On-prem components

Method: Copy


>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.1.7

- Disable Workstation-to-Workstation Communication - Using technologies such as private VLANs or micro-segmentation, disable all workstation-to-workstation communication to limit an attacker's ability to move laterally and compromise neighboring systems. 
>Whenever possible, workstations should be limited to talking only to servers.

Applies to: On-prem components

Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 4.2.7

- Use Wireless Authentication Protocols That Require Mutual, Multifactor Authentication - Ensure that wireless networks use authentication protocols such as Extensible Authentication Protocol-Transport Layer Security (EAP/TLS) that requires mutual, multifactor authentication. [This is also possibly a level three, since its probably not easy to set this up on client environments]
>Use of wireless technology in election technology demands that all parties be properly and fully authenticated.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.8