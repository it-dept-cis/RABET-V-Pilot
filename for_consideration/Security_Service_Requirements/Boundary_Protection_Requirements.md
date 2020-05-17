# Boundary Protections Requirements

## Maturity Level 1 
- Application boundaries, such as network boundaries and APIs are inventoried - Maintain an up-to-date inventory of all of the organization's network  and API boundaries. [Not sure if this makes sense from an application/product stand point. For SaaS platforms, the network boundary kinda makes sense and the API boundaries might. Alternative is to remove this one]

[AMW: I kind of agree on inventory ones because how do we enforce without helping them pass?]

>Deployments of election technology should be segregated into their own network segment. These should be known and kept up to date. If the application needs to provide access through an API or similar types of interfaces then those boundaries are also captured

Applies to: All components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.1


- Deny Communications with Known Malicious IP Addresses - Deny communications with known malicious or unused Internet IP addresses. Limit access to trusted and necessary IP address ranges at each of the organization's application and network boundaries.

[AMW: This is black list and white list approach, which should be separate. Black list should apply to all network boundaries. White list should apply to the most secure ones. Also, I liked the earlier requirement that mentioned the application API as a boundary. Please add that here.]

[PL: agree we can split this one out between blacklist and whitelist, I do have a concern on the difficulty and managing those IP whitelists and I think it would be appropriate for a level 3]

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
- Manage Network Infrastructure Using Multifactor Authentication and Encrypted Sessions - Manage all network infrastructure using MFA and encrypted sessions.
>The ability to manage network devices should be limited to authorized personnel accessing the management interface locally or using MFA in encryption sessions.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.3.5
- Apply Port and Packet Size Filtering - Consider port and packet size filtering by the upstream network service provider to limit unnecessary traffic. 


[AMW: What does it mean to consider?]
[pl: is the intention behind this one to ask upstream providers to stop specific traffic from reaching the organization, in general or in the midst of an attack. Is this a service that is commonly done by upstream providers vs just doing it at your own firewall. Considering this is one is level 1, we probably need to iron these out or just cut]

>Work with upstream providers to filter out as much as possible that is not related to the election service being provided.

Applies to: Hosted Components

Method: Copy


>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.2
- Configure Perimeter Devices to Prevent Common Types of Attacks - Define strict �TCP keepalive� and �maximum connection� on all perimeter devices, such as firewalls and proxy servers. This assists with preventing the success of SYN Flood attacks. Another approach is leveraging SYN cookies to prevent TCP SYN floods. 

[AMW: There is also a SYN Cookie approach we need to require somewhere. This is probablt the right place.]
[pl: so for the different options that we lay out in the description, are these part of the requirement are they simply examples of the types of mitigations they should have in place?]

>A SYN Flood is one of the most common forms of DDoS attacks observed by the MS-ISAC.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.4

- Documentation Clearly Identifies Wireless Capabilities - Product documentation clearly defines any required wireless capability associated with the product along with information regarding the security and management of those wireless capabilities. 

[AMW: Same comment about inventory requirements. Need to convert to something meaningful or remove.]
[pl: a bit more of a paper exercise, but one that might still be useful from a customer standpoint]
>Identify election technology that uses a wireless connection, and document each access point. For Wi-Fi, this will be a Wi-Fi router and any endpoint devices. For Bluetooth and NFC, this may be multiple devices. The decision to enable wireless technology should be made by the election administrator using a risk-based decision-making process.

Applies to: On-prem components

Method: Derived 

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.1
- Provide Dedicated Wireless Networks - Create a separate wireless network for each separate use. Access from the wireless network should be treated as untrusted and filtered and audited accordingly.[IF we really want dedicate wireless environment, then we would need mutual authentication, I suggest removing this one]

[AMW: Dont we have a requirement for mutual authentication?]

[pl: we do, the question is from a product standpoint, unless you're shipping out wireless AP with your product and your product can only connect to that stand alone vendor provided ap and that AP can only allow known trusted devices to connect to it, then its hard to ensure that the wireless network is really being used in a dedicated sense and ppl aren't using it for streaming netflix and what not. I'm under the impression, this is one is easier for an organization to do, then build in as a product. One way that we could work around that is recommend vendors provide a standalone access point or recommend they use cellular networks where appropriate. ]

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


- Enable Firewall Logging - Enable firewall logging of accepted and denied traffic to determine where a DDoS may be originating from.
>Most election technology must be careful not to block based on IP address unless there is evidence of malicious behavior.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.3
- Configure Devices to Detect and Alarm on Traffic Anomalies - Configure firewalls and intrusion detection/prevention devices to alarm on traffic anomalies. Establish and regularly validate baseline traffic patterns (volume and type) for public-facing websites.
>Active and automated monitoring during peak election periods is critical to early detection and mitigation of DDoS attacks.

Applies to: Hosted components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.5.5
- Limit Wireless Access on Client Devices - Configure wireless access only on client machines that have an essential wireless business purpose. Allow access only to authorized wireless networks, and restrict access to other wireless networks.

[AMW: I think this has a typo and "do not" should be "do". But also, how does this one differ from the ones at maturity level 1?]
[pl: the first one is really about disabling wireless this one is about restricting which wireless networks the device can connect to]

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

- Manage All Vendor-issued Devices Remotely Accessing sensitive networks - Scan all vendor issued devices remotely logging into the organization's network prior to accessing the network to ensure that each of the organization's security policies has been enforced in the same manner as local network devices.
[This might another to cut]

[AMW: I actually like it. The use of a mobile device manager to enforce a policy on all devices is amazing. ]
[pl: agreed, rephrased this one to be more aligned with what you were thinking, I'm thinking this from a "I gave you an ipad with my product on it" management standpoint. This is tricky cause it also comes down to who are we giving the management of the assets over to, is the expectation the customer or the vendor?]

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

- Use Wireless Authentication Protocols That Require Mutual, Multifactor Authentication - Ensure that wireless networks use authentication protocols such as Extensible Authentication Protocol-Transport Layer Security (EAP/TLS) that requires mutual, multifactor authentication. 
>Use of wireless technology in election technology demands that all parties be properly and fully authenticated.

Applies to: On-prem components

Method: Copy

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.6.8

- Limit Access to Trusted IP Address Ranges- By applying a whitelist of known trusted IP addresses this allows organizations to greatly reduce their attack surface.
[pl:added based on AW comment]

>This can be done using a network firewall at the parameter of your election network. Preventing access from known malicious IP addresses can be done for all election applications, even public facing ones. The Election Infrastructure Information Sharing and Analysis Center (EI-ISAC) provides list of known malicious IP addresses.

Applies to: Hosted components

Method: Derived

>Reference: CIS Security Best Practices for Non-Voting Election Technology 1.1.3