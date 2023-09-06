# az104

Azure admin concepts: Virtual networks, Storage, Compute, Identity, Security, Governance


## Scenarios:

* Assign licenses to users based on Azure AD attributes actions:
  - You must create a dynamic security group
  - The dynamic group must be added to a license group for automatic synchronization

* Which of the following situations would be good example of when to use a resource lock?
  - An ExpressRoute Circuit is a critical resources Resource locks prevent other users in the organization from accidentally deleting or modifying critical resources.

* user principal name (UPN) = for guest users UPM will contain the email of the guest user (bsmith_contoso.com) followed by #EXT# followed by the domain name of the tenant (@fabrikam.com):
`UserPrincipalName: bsmith_contoso.com#EXT#@fabrikam.com`

* Name 3 resource types can you apply delete locks: virtual machines, subscriptions, and resource groups. You cannot use delete locks on management groups or storage account data.

* Invite external users for B2B collaboration: External collaboration settings
* Block access to resources from unknown locations: Conditional Access
* You can assign a network security group (NSG) to the subnet of the virtual network in the SAME region.

## Concepts:

* Azure Resource Manager (ARM) provides a consistent management layer to perform tasks through Azure PowerShell, Azure CLI, Azure portal, REST API, and client SDKs.
```bash
Azure portal/az cli/sdk ---> Azure Resource Manager --> VM/storage/DB
```
  - With ARM you can deploy, manage, and monitor all the resources for your solution as a group, rather than handling these resources individually.
  - **Azure Resource Manage**r templates are JSON files that define the infrastructure and configuration for the deployment, the mandatory fields are `$schema,contentVersion and resources`, ARM template example:
```bash
{
    "$schema": "http://schema.management.​azure.com/schemas/2019-04-01/deploymentTemplate.json#",​
    "contentVersion": "",​
    "parameters": {},​
    "variables": {},​
    "functions": [],​
    "resources": [],​
    "outputs": {}​
}
```
-  Rerun ARM templates: If the resource already exists and no change is detected in the properties, no action is taken. If the resource already exists and a property has changed, the resource is updated. If the resource doesn't exist, it's created.
- **Azure Bicep** is a domain-specific language (DSL) that uses declarative syntax to deploy Azure resources
  - Bicep templates are transpiled (converted) into JSON, and it provide a simpler syntax for writing templates.

* **Azure Resources Groups** - logical collections of virtual machines, storage accounts, virtual networks, web apps, databases, and/or database servers. Resource Groups are at their simplest a logical collection of resources, there are a few rules for resource groups:
  - Resources can only exist in one Resource Groups.
  - Resource Groups cannot be renamed.
  - Resource Groups can have resources from many different regions.

* **Azure Subscriptions** - authenticates and authorizes user to use resources, and a subscription is linked to an Azure account, which in turn is an identity in Azure Active Directory (AD)

*  **Resource Manager locks** allow organizations to put a structure in place that prevents the accidental deletion of resources in Azure.
   - You can associate the lock with a subscription, resource group, or resource and locks are inherited by child resources
   - There are 2 types of Locks:
     - **Read-Only locks** which prevent any changes to the resource
     - **Delete locks**, which prevent deletion (can be applied on virtual machines, subscriptions, and resource groups)

* Azure role-based access control (RBAC):
  - Azure **AD roles** provide the mechanism for managing permissions to **AD resources** (e.g. user accounts and passwords)
 
 * A **custom role definition** includes the operations allowed such as read, write, and delete for Azure resources, and the scope of those permissions

* Roles:
  - Reader: view all the resources but does not allow you to make any changes
  - Contributor: allows you to manage all the resource
  - Billing reader: read access only to billing data 
  - Tag Contributor: manage entity tags without providing access to the entities themselves

* Ports:
```bash
 port 443 to secured HTTPS traffic, 
 port 3389 for Remote Desktop,  
 port 587 to send outbound email by using authenticated SMTP relay. 
 port 80 is used for unsecured traffic. 
 port 25 is used by mail traffic
```

* **Application security groups** allow you to group together the network interfaces from multiple VMs, and then use the group as the source or destination in an NSG rule.

---

* **Semantic versioning**  has the form of `Major.Minor.Patch` corresponds to the three types of changes covered in the previous section.
  > Examples of versions using the semantic versioning scheme are `1.0.0` and `3.7.129`. These versions don't have any **labels**.
* The **major** element represents the version of content that has changed significantly, which results in some degree of incompatibility with the previous major version.
* The **minor** element represents the version of content that has been changed but not as significantly as the major version, making it more likely to be compatible with the previous minor version
*  The **patch** element represents a fix that preserves backward compatibility and can represent prereleases, such as alpha/beta.
