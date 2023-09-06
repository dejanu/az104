# az104

Azure admin concepts: Virtual networks, Storage, Compute, Identity, Security, Governance


## Actions:

* Assign licenses to users based on Azure AD attributes actions:
  - You must create a dynamic security group
  - The dynamic group must be added to a license group for automatic synchronization

* Which of the following situations would be good example of when to use a resource lock?
  - An ExpressRoute Circuit is a critical resources Resource locks prevent other users in the organization from accidentally deleting or modifying critical resources.
 

* user principal name (UPN) = for guest users will contain the email of the guest user (bsmith_contoso.com) followed by #EXT# followed by the domain name of the tenant (@fabrikam.com):
`UserPrincipalName: bsmith_contoso.com#EXT#@fabrikam.com`

## Concepts:

* Azure Resource Manager (ARM) provides a consistent management layer to perform tasks through Azure PowerShell, Azure CLI, Azure portal, REST API, and client SDKs.
```bash
Azure portal/az cli/sdk ---> Azure Resource Manager --> VM/storage/DB
```
  - With ARM you can deploy, manage, and monitor all the resources for your solution as a group, rather than handling these resources individually.

* **Azure Resources Groups** - logical collections of virtual machines, storage accounts, virtual networks, web apps, databases, and/or database servers. Resource Groups are at their simplest a logical collection of resources, there are a few rules for resource groups:
  - Resources can only exist in one Resource Groups.
  - Resource Groups cannot be renamed.
  - Resource Groups can have resources from many different regions.

* **Azure Subscriptions** - authenticates and authorizes user to use resources, and a subscription is linked to an Azure account, which in turn is an identity in Azure Active Directory (AD)

*  **Resource Manager locks** allow organizations to put a structure in place that prevents the accidental deletion of resources in Azure.
   - You can associate the lock with a subscription, resource group, or resource and locks are inherited by child resources
   - There are 2 types of Locks: **Read-Only locks** which prevent any changes to the resource and **Delete locks**, which prevent deletion.

* Azure role-based access control (RBAC):
  - Azure **AD roles** provide the mechanism for managing permissions to **AD resources** (e.g. user accounts and passwords)
 
 * A **custom role definition** includes the operations allowed such as read, write, and delete for Azure resources, and the scope of those permissions



---

* **Semantic versioning**  has the form of `Major.Minor.Patch` corresponds to the three types of changes covered in the previous section.
  > Examples of versions using the semantic versioning scheme are `1.0.0` and `3.7.129`. These versions don't have any **labels**.
* The **major** element represents the version of content that has changed significantly, which results in some degree of incompatibility with the previous major version.
* The **minor** element represents the version of content that has been changed but not as significantly as the major version, making it more likely to be compatible with the previous minor version
*  The **patch** element represents a fix that preserves backward compatibility and can represent prereleases, such as alpha/beta.
