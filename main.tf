provider "azurerm" {
  features {}
}
 
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
 
resource "random_integer" "ri" {
  min = 10000
  max = 99999
}
 
resource "azurerm_cosmosdb_account" "db" {
  name                = "test-cosmos-db-${random_integer.ri.result}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  offer_type          = "Standard"
  kind                = "MongoDB"
 
  capabilities {
    name = "EnableAggregationPipeline"
  }
 
  capabilities {
    name = "mongoEnableDocLevelTTL"
  }
 
  capabilities {
    name = "MongoDBv3.4"
  }
 
  capabilities {
    name = "EnableMongo"
  }
 
  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }
 
  geo_location {
    location          = var.location
    failover_priority = 0
  }
 
  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }
}
 
resource "azurerm_cosmosdb_mongo_database" "example" {
  name                = var.mongo_database_name
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.db.name
  throughput          = var.mongo_database_throughput
}
 
 