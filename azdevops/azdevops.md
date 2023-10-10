# Services

## Azure DevOps

* Type of pipelines: **build** and **release**
    - When creating a build or release pipeline, you can specify which pool it uses, organization, or project scope.

* Caching is available YAML and classic build pipelines


* In Azure DevOps, there are 4 types of jobs available:
    - **Agent pool jobs**: run on an agent that is part of an agent pool
    - **Container jobs**: run in a container on an agent part of an agent pool
    - **Deployment group jobs**:  run on systems in a deployment group
    - **Agentless jobs**: run directly on the Azure DevOps also-often-called **Server Jobs**

![agents](https://github.com/dejanu/az104/blob/main/src/agents.png)

* The agent always starts this communication (pull model). All the messages from the agent to Azure Pipelines over HTTPS, depending on how you configure the agent.
* The agent downloads a listener OAuth token and uses it to listen to the job queue
* The maximum duration of a build running on the Microsoft-hosted agent is s**6h**


* Which two features are present in Azure Pipelines, but NOT in GitHub Actions?
    - deployment groups
    - service connections

