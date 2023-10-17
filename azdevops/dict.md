# Questions for projects

```
"There is an old saying in the industry that any successful large IT system was previously a successful small IT system." The aim is to build a snowball effect where each new successful outcome adds to previous successful results. It will maximize the buy-in from all affected.
```

## CI/CD

* Continuous Integration - merging and testing of code, leading to an early finding of defects. Continuous integration should include an OSS vulnerability scans and static code analysis

* Continuous Delivery - helps organizations quickly fix bugs and respond to ever-changing business requirements. Continuous deployment should include passive penetration tests as well as SSL and infrastructure scan

* KPI:
    - Deployment Frequency. Increasing the frequency of deployments is often a critical driver in DevOps Projects.
    - Deployment Speed. It is necessary to reduce the time that they take.
    - Deployment Size. How many features, stories, and bug fixes are being deployed each time?
    - Lead Time. How long does it take from the creation of a work item until it is completed?
    - Server to Admin Ratio. Are the projects reducing the number of administrators required for a given number of servers?
    - Staff Member to Customers Ratio. Is it possible for fewer staff members to serve a given number of customers?
    - Application Usage. How busy is the application?
    - Application Performance. Is the application performance improving or dropping? (Based upon application metrics)?
    - Mean time to recover. How quickly can you recover from a failure?


## Project types

* A greenfield project is one done on a greenfield, undeveloped land (there was no existing codebase)
* A brownfield project is done on the used ground for other purposes (the baggage of existing codebases, significant amount of technical debt).

## User base

* Canary users voluntarily test bleeding edge features as soon as they're available.
* Early adopters who voluntarily preview releases are considered more refined than the code that exposes canary users.
* Users who consume the products after passing through canary and early adopters.

## System type

* Systems of record - systems have historically evolved slowly and carefully, systems that provide the truth about data elements and emphasize accuracy and security, systems that provide the truth about data elements are often called Systems of Record. e.g. banking system
* Systems of engagement - systems are modified regularly, and often used in experimentation to solve new problems and have the customer as a central part, e.g. Web services, mobile, analytics, CRM


## Versioning 101

* **Semantic versioning**  has the form of `Major.Minor.Patch`
  > Examples of versions using the semantic versioning scheme are `1.0.0` and `3.7.129`. These versions don't have any **labels**.

* The **major** element represents the version of content that has changed significantly, which results in some degree of incompatibility with the previous major version.

* The **minor** element represents the version of content that has been changed but not as significantly as the major version, making it more likely to be compatible with the previous minor version

* The **patch** element represents a fix that preserves backward compatibility and can represent prereleases, such as alpha/beta.
    - The patch element is the only one that provides assurances of backward compatibility.
    - A patch or revision is used to indicate that a flaw, bug, or malfunctioning part of the component has been fixed.

* The **label** element represents prereleases, such as alpha/beta


