# Networking


![Region aozne](https://github.com/dejanu/az104/blob/main/src/regions_zone.PNG)


* Azure virtual network  (VNet): logical isolation of the Azure cloud that's dedicated to your subscription.
  - Use virtual networks to provision and manage virtual private networks (VPNs) in Azure.
  - Each virtual network has its own **Classless Inter-Domain Routing (CIDR)** block and can be LINKED to other virtual networks and on-premises networks.
  - Link Virtual Networks when the CIDR blocks of the connecting networks don't overlap.
  - You can segment a VNet into multiple subnets
  - **Subnets** provide a way for you to implement logical divisions within your virtual network. The IP address space for a subnet must be specified by using CIDR notation

![virtual networks](https://github.com/dejanu/az104/blob/main/src/virtual_networks.png)

*  Azure VNets connect Azure resources  (virtual machines, the Azure App Service Environment, Azure Kubernetes Service (AKS), and Azure Virtual Machine Scale Sets). You can use **service endpoints** to connect to other Azure resource types, such as Azure SQL databases and storage accounts.

* Private endpoints: offer security access between Azure PaaS Services such as Storage, CosmosDB, SQL Database, and Azure-hosted services such as Virtual Machine on Azure backbone network.

* To filter network traffic to and from Azure resources that are attached to a VNet [network security groups (NSG)](https://learn.microsoft.com/en-us/azure/security/fundamentals/network-overview) and network security group rules.

* Network security groups contain security rules that filter network traffic by: IP address, Port, and Protocol

* You can assign a network security group to a SUBNET or a NETWORK INTERFACE, and define security rules in the group to control network traffic.
    - Security rules in network security groups enable you to filter network traffic
    - Azure creates default security rules for traffic:  `DenyAllInbound` traffic and `AllowInternetOutbound` traffic. By default, inbound security rules allow traffic from any virtual machine to any other virtual machine WITHIN the virtual network
    - You can't remove the default security rules.
    - You can override a default security rule by creating another security rule that has a higher Priority setting for your network security group.

* Rules priority:
  - Priority = a number between 100 and 4096. Rules are processed in priority order, with lower numbers processed before higher numbers, because lower numbers have higher priority. Once traffic matches a rule, processing stops. ` 100 DENY all` doesn't matter what's after.
  - E.g. : The rule with priority 150 is processed before the rule with priority 200.


-> For INBOUND traffic, Azure first processes network security group security rules for any associated subnets and then any associated network interfaces.


<- For OUTBOUND traffic, the process is reversed. Azure first evaluates network security group security rules for any associated network interfaces followed by any associated subnets.



* DMZ (demilitarized zone) = subnet with a network security group

* Ports:

```bash
 port 443 # to secured HTTPS traffic, 
 port 3389 # for Remote Desktop,  
 port 587 # to send outbound email by using authenticated SMTP relay. 
 port 80 # is used for unsecured traffic. 
 port 25 # is used by mail traffic
```

* **Application security groups** allow you to group together the network interfaces from multiple VMs, and then use the group as the source or destination in an NSG rule.


* You can connect virtual networks to each other with **virtual network peering**

![peering](https://github.com/dejanu/az104/blob/main/src/vnet_peering.png)


* When virtual networks are peered, you can configure Azure VPN Gateway in the peered virtual network as a transit point. A virtual network can have only one VPN gateway