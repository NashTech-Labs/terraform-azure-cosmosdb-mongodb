# Terraform Azure CosmosDB MongoDB

This repository contains Terraform configurations for setting up an Azure Cosmos DB with the MongoDB API.

## Table of Contents

- [Terraform Azure CosmosDB MongoDB](#terraform-azure-cosmosdb-mongodb)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Configuration](#configuration)
  - [Usage](#usage)
  - [Resources Created](#resources-created)
## Introduction

This Terraform configuration sets up an Azure Cosmos DB account configured to use the MongoDB API. The configuration includes the creation of the resource group, the Cosmos DB account with specific capabilities, consistency policies, and geo-replication settings.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An Azure account with sufficient privileges to create resources.
- Azure CLI installed and authenticated.

## Configuration

Before running the Terraform configurations, make sure to set up the following variables in a `terraform.tfvars` file or directly in the command line.

```hcl
resource_group_name       = "your-resource-group-name"
location                  = "your-primary-location"
failover_location         = "your-failover-location"
max_interval_in_seconds   = 10
max_staleness_prefix      = 200
mongo_database_name       = "your-mongo-database-name"
mongo_database_throughput = 400
```

## Usage

1. **Clone the Repository**
   ```bash
   git clone <url>
   cd terraform-azure-cosmosdb-mongodb
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Plan the Deployment**
   ```bash
   terraform plan
   ```

4. **Apply the Configuration**
   ```bash
   terraform apply
   ```

5. **Destroy the Resources (when no longer needed)**
   ```bash
   terraform destroy
   ```

## Resources Created

- Azure Resource Group
- Azure Cosmos DB Account with MongoDB API
  - Capabilities:
    - EnableAggregationPipeline
    - mongoEnableDocLevelTTL
    - MongoDBv3.4
    - EnableMongo
  - Consistency Policy: BoundedStaleness
  - Geo-Replication
- Azure Cosmos DB Mongo Database
