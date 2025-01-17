Protecting your environment requires taking inventory of the devices that are in your network. However, mapping devices in a network can often be expensive, challenging, and time-consuming.

Microsoft Defender for Endpoint provides a device discovery capability that helps you find unmanaged devices connected to your corporate network without the need for extra appliances or cumbersome process changes. Device discovery uses onboarded endpoints, in your network to collect, probe, or scan your network to discover unmanaged devices. The device discovery capability allows you to discover:

- Enterprise endpoints (workstations, servers, and mobile devices) that aren't yet onboarded to Microsoft Defender for Endpoint
- Network devices like routers and switches
- IoT devices like printers and cameras

Unknown and unmanaged devices introduce significant risks to your network - whether it's an unpatched printer, network devices with weak security configurations, or a server with no security controls. Once devices are discovered, you can:

- Onboard unmanaged endpoints to the service, increasing the security visibility on them.
- Reduce the attack surface by identifying and assessing vulnerabilities, and detecting configuration gaps.


To discover devices, watch the: [Discover Devices Video](https://www.youtube.com/watch?v=TCDxICrZQa8).


To assess and Onboard Unmanaged Devices:

>[!VIDEO https://learn-video.azurefd.net/vod/player?id=c8e97473-5d33-4e67-bd36-7b608f678262]


With this capability, a security recommendation to onboard devices to Microsoft Defender for Endpoint is available as part of the existing threat and vulnerability management experience.


Discovery methods
You can choose the discovery mode to be used by your onboarded devices. The mode controls the level of visibility you can get for unmanaged devices in your corporate network.

There are two modes of discovery available:

- Basic discovery: In this mode, endpoints passively collect events in your network and extract device information from them. Basic discovery uses the SenseNDR.exe binary for passive network data collection and no network traffic will be initiated. Endpoints extract data from every network traffic that is seen by an onboarded device. With basic discovery, you'll only gain limited visibility of unmanaged endpoints in your network.

- Standard discovery (recommended): This mode allows endpoints to actively find devices in your network to enrich collected data and discover more devices - helping you build a reliable and coherent device inventory. In addition to devices that were observed using the passive method, standard mode also uses common discovery protocols that use multicast queries in the network to find even more devices. Standard mode uses smart, active probing to discover additional information about observed devices to enrich existing device information. When Standard mode is enabled, minimal, and negligible network activity generated by the discovery sensor might be observed by network monitoring tools in your organization.


Devices that have been discovered but haven't yet been onboarded and secured by Microsoft Defender for Endpoint will be listed in the device inventory within the Computers and Mobile tab.

To assess these devices, you can use a filter in the device inventory list called Onboarding status, which can have any of the following values:

- Onboarded: The endpoint is onboarded to Microsoft Defender for Endpoint.
- Can be onboarded: The endpoint was discovered in the network and the Operating System was identified as one that is supported by Microsoft Defender for Endpoint, but it isn't currently onboarded. We highly recommend onboarding these devices.
- Unsupported: The endpoint was discovered in the network but isn't supported by Microsoft Defender for Endpoint.
- Insufficient info: The system couldn't determine the supportability of the device. Enabling standard discovery on more devices in the network can enrich the discovered attributes.

