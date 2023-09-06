# az104

Azure admin concepts: Virtual networks, Storage, Compute, Identity, Security, Governance


## Actions:

* Assign licenses to users based on Azure AD attributes actions:
  - You must create a dynamic security group
  - The dynamic group must be added to a license group for automatic synchronization
 

* user principal name (UPN) = for guest users will contain the email of the guest user (bsmith_contoso.com) followed by #EXT# followed by the domain name of the tenant (@fabrikam.com):
`UserPrincipalName: bsmith_contoso.com#EXT#@fabrikam.com`

## Concepts:

* Azure role-based access control (RBAC):
  - Azure **AD roles** provide the mechanism for managing permissions to **AD resources** (e.g. user accounts and passwords)
 
 * A **custom role definition** includes the operations allowed such as read, write, and delete for Azure resources, and the scope of those permissions



---

* **Semantic versioning**  has the form of `Major.Minor.Patch` corresponds to the three types of changes covered in the previous section.
  > Examples of versions using the semantic versioning scheme are `1.0.0` and `3.7.129`. These versions don't have any **labels**.
* The **major** element represents the version of content that has changed significantly, which results in some degree of incompatibility with the previous major version.
* The **minor** element represents the version of content that has been changed but not as significantly as the major version, making it more likely to be compatible with the previous minor version
*  The **patch** element represents a fix that preserves backward compatibility and can represent prereleases, such as alpha/beta.
