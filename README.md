# az104

Azure admin concepts: Virtual networks, Storage, Compute, Identity, Security, Governance


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

* **Resource Manager locks** allow organizations to put a structure in place that prevents the accidental deletion of resources in Azure.
   - You can associate the lock with a subscription, resource group, or resource and locks are inherited by child resources
   - There are 2 types of Locks:
     - **Read-Only locks** which prevent any changes to the resource
     - **Delete locks**, which prevent deletion (can be applied on virtual machines, subscriptions, and resource groups)

* Azure role-based access control (RBAC):
  - Azure **AD roles** provide the mechanism for managing permissions to **AD resources** (e.g. user accounts and passwords)
---

* Azure Active Directory (AD):  cloud-based identity and access management service
  - Azure AD provides secure single sign-on (SSO)
  - Identity (users or apps)
  - Account (identity that has data associated with it)
  - Azure AD Account (n Azure AD account is an identity that's created through Azure AD or another Microsoft cloud service)
  - Azure tenant:  single dedicated and trusted instance of Azure AD. Each tenant (also called a directory) represents a single organization.
  
* Azure AD supports three types of user accounts: Cloud identity (defined only in Azure AD),Directory-synchronized identity (defined in an on-premises Active Directory-synchronization activity occurs via Azure AD Connect to bring these user accounts in to Azure, Guest user (acounts outside of Azure)

* Active Directory Domain Services (AD DS) is the traditional deployment of Windows Server-based Active Directory on a physical or virtual server.

* AD DS is primarily a directory service, while Azure AD is a full identity solution(is based on HTTP and HTTPS, it doesn't use Kerberos authentication.)

* What term defines a dedicated and trusted instance of Azure Active Directory? - **Azure AD tenant**

* Which choice correctly describes Azure Active Directory? - Azure AD is primarily an identity solution. It's designed for internet-based applications by using HTTP and HTTPS communications.
 
* A **custom role definition** includes the operations allowed such as read, write, and delete for Azure resources, and the scope of those permissions

* Roles:
  - Reader: view all the resources but does not allow you to make any changes
  - Contributor: allows you to manage all the resource
  - Billing reader: read access only to billing data 
  - Tag Contributor: manage entity tags without providing access to the entities themselves

---


---

* **Semantic versioning**  has the form of `Major.Minor.Patch` corresponds to the three types of changes covered in the previous section.
  > Examples of versions using the semantic versioning scheme are `1.0.0` and `3.7.129`. These versions don't have any **labels**.
* The **major** element represents the version of content that has changed significantly, which results in some degree of incompatibility with the previous major version.
* The **minor** element represents the version of content that has been changed but not as significantly as the major version, making it more likely to be compatible with the previous minor version
*  The **patch** element represents a fix that preserves backward compatibility and can represent prereleases, such as alpha/beta.
