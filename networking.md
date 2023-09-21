# Networking


![Region aozne](https://github.com/dejanu/az104/blob/main/src/regions_zone.PNG)

Azure has datacenters all over the world filled with servers and disks. These datacenters are grouped into geographic **regions** like: `West US, North Europe, Southeast Asia`

* VM flavours and usage:

![VM](https://github.com/dejanu/az104/blob/main/src/vmsize.png)
--

* Azure virtual network (VNet):
  - Use virtual networks to provision and manage virtual private networks (VPNs) in Azure.
  - Each virtual network has its own **Classless Inter-Domain Routing (CIDR)** block and can be LINKED to other virtual networks and on-premises networks. Link Virtual Networks when the CIDR blocks of the connecting networks don't overlap.
  - You can segment a VNet into multiple subnets

* **Subnets** provide a way for you to implement logical divisions within your virtual network. The IP address space for a subnet must be specified by using CIDR notation. 
  - A subnet is a range of IP addresses in the virtual network.
  - For each subnet, Azure reserves **five** IP addresses (first four last addresses, and last address)
  - Azure uses system routes to direct network traffic between virtual machines, on-premises networks, and the internet (routes are stored in a route table)
  
  - You can configure **user defined routes** and next hop targets (e.g. VNet, Network Virtual Appliance, Internet, None)
  - Traffic routed to the `none` next hop type is dropped and not routed outside the subnet.
  - Valid next hop choices are: `virtual appliance, virtual network gateway, virtual network, internet, and none``


* **Network Interface** is the interconnection between a VM and a VNet.
  - Multiple NICs allow a VM to connect to different subnets

![virtual networks](https://github.com/dejanu/az104/blob/main/src/virtual_networks.png)

*  Azure VNets connect Azure resources (virtual machines, the Azure App Service Environment, AKS, and Azure Virtual Machine Scale Sets). You can use **service endpoints** to connect to other Azure resource types, such as Azure SQL databases and storage accounts.

* Private endpoints: offer security access between Azure PaaS Services such as Storage, CosmosDB, SQL Database, and Azure-hosted services such as Virtual Machine on Azure backbone network.

* Virtual network endpoints extend the private address space in Azure

* To filter network traffic to and from Azure resources that are attached to a VNet [network security groups (NSG)](https://learn.microsoft.com/en-us/azure/security/fundamentals/network-overview) and network security group rules.

* Network security groups contain security rules that filter network traffic by: IP address, Port, and Protocol

* You can assign a network security group to a SUBNET or a NETWORK INTERFACE, and define security rules in the group to control network traffic.
    - Security rules in network security groups enable you to filter network traffic
    - Azure creates default security rules for traffic:  `DenyAllInbound` traffic and `AllowInternetOutbound` traffic. By default, Outbound requests are allowed. Inbound traffic is allowed only from WITHIN the virtual network.
    - You can't remove the default security rules.
    - You can OVERRIDE a default security rule by creating another security rule that has a higher Priority setting for your network security group.
    - You can assign an NSG to the subnet of the virtual network in the same region

* Rules priority:
  - Priority = a number between 100 and 4096. Rules are processed in priority order, with lower numbers processed before higher numbers, because lower numbers have higher priority. Once traffic matches a rule, processing stops. `100 DENY all` doesn't matter what's after.
  - E.g. : The rule with priority 150 is processed before the rule with priority 200.


-> For INBOUND traffic, Azure first processes network security group security rules for any associated subnets and then any associated network interfaces (SUBNETS-->NIC)

<- For OUTBOUND traffic, the process is reversed. Azure first evaluates network security group security rules for any associated network interfaces followed by any associated subnets (NIC-->SUBNET)

* DMZ (demilitarized zone): subnet with a network security group

* **Availability sets**: are logical groupings of VMs that reduce the chance of correlated failures bringing down related VMs at the same time.
  - Each VM in an availability set is placed in one update domain and one fault domain.
    - Fault domains define the group of virtual machines that share a common power source and network switch: by default up to **3 fault domains**
    - Update domains groups of VMs and underlying physical hardware that can be rebooted at the same time: by default **5** up to **20 update domains**

![fault domain](https://github.com/dejanu/az104/blob/main/src/fault_domain.PNG)

* Ports:

```bash
 port 443 # to secure HTTPS traffic e.g sync with Azure AD
 port 445 # file share
 port 3389 # for Remote Desktop 
 port 587 # to send outbound email by using authenticated SMTP relay
 port 25 # is used by mail traffic
 port 80 # is used for unsecured traffic, e.g download CRL (cert revocation list) to verify SSL certs
 port 5671 # is used to send health information to Azure AD
```

* **Application security groups** allow you to group together the NICs from multiple VMs, and then use the group as the source or destination in an NSG rule (the NIC must be in the same VNet)

* You can connect virtual networks to each other with **virtual network peering**

![peering](https://github.com/dejanu/az104/blob/main/src/vnet_peering.png)

--

* Azure Virtual Network peering lets you connect virtual networks in the same or different regions, so resources in both networks can communicate with each other.
* When virtual networks are peered, you can configure Azure VPN Gateway in the peered virtual network as a transit point. A virtual network can have only one VPN gateway 

--

* To associate a VNet to a private DNS zone, you add the virtual network to the zone by creating a virtual **network link**.

* **Azure Bastion** is a service that lets you connect to a virtual machine by using a browser, without exposing RDP and SSH ports

* Links

- [Networking concepts](https://learn.microsoft.com/en-us/azure/virtual-network/network-overview)