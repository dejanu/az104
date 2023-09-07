# Networking

* Azure virtual network  (VNet): logical isolation of the Azure cloud that's dedicated to your subscription.
  - User virtual networks to provision and manage virtual private networks (VPNs) in Azure.
  - Each virtual network has its own **Classless Inter-Domain Routing (CIDR)** block and can be LINKED to other virtual networks and on-premises networks.
  - Link Virtual Networks when the CIDR blocks of the connecting networks don't overlap.
  - **Subnets** provide a way for you to implement logical divisions within your virtual network. The IP address space for a subnet must be specified by using CIDR notation

![virtual networks](https://github.com/dejanu/az104/blob/main/src/virtual_networks.png)

*  Azure VNets connect Azure resources  (virtual machines, the Azure App Service Environment, Azure Kubernetes Service (AKS), and Azure Virtual Machine Scale Sets). You can use **service endpoints** to connect to other Azure resource types, such as Azure SQL databases and storage accounts

* Secure communication and control access WITHIN a virtual network, you can use network security groups (NSG) and network security group rules.
* You can assign a network security group to a SUBNET or a NETWORK INTERFACE

* DMZ (demilitarized zone) = subnet with a network security group
* Ports:
```bash
 port 443 to secured HTTPS traffic, 
 port 3389 for Remote Desktop,  
 port 587 to send outbound email by using authenticated SMTP relay. 
 port 80 is used for unsecured traffic. 
 port 25 is used by mail traffic
```

* **Application security groups** allow you to group together the network interfaces from multiple VMs, and then use the group as the source or destination in an NSG rule.
* You can connect virtual networks to each other with **virtual network peering**
