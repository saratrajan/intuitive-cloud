# Terraform Exercise

## Azure Architecture

Below is the architecture diagram that has been used to formulate the Terraform components and modules.

![](../images/AzureARCH.png)

## Directory Structure

```shell
main_project_directory/
│
├── main.tf
├── provider.tf
│
├── modules/
│   │
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── storage/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   └── networking/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf

```

## Azure Pipeline for IaC

### Overview
This document provides a brief overview of the Azure pipeline configuration designed for Terraform operations.

### YAML file path

```yml
./azure-pipeline-iac-terraform.yml
```

### Stages:

#### 1. Validate
This stage ensures that the Terraform configuration files are valid.

- **Job Name**: TerraformValidate

#### 2. Lint
This stage uses `tflint` to lint the Terraform configuration files for best practices and potential issues.

- **Job Name**: TerraformLint

#### 3. Deploy
This stage applies the Terraform configuration, thereby creating, updating, or destroying infrastructure resources as defined in the configuration.

- **Job Name**: TerraformApply
  - **Environment**: Production or Development (based on the branch of pipeline)

### Environment Variables:
Several environment variables related to Azure credentials are used during the deployment phase:

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`

> These are crucial for Terraform to have the appropriate permissions to deploy resources to the Azure cloud environment.

