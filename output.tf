output "cosmosdb_account_name" {
  description = "The name of the Cosmos DB account"
  value       = azurerm_cosmosdb_account.db.name
}
 
output "cosmosdb_mongo_database_name" {
  description = "The name of the MongoDB database"
  value       = azurerm_cosmosdb_mongo_database.test_DB.name
}
 
output "cosmosdb_primary_key" {
  description = "The primary key for the Cosmos DB account"
  value       = azurerm_cosmosdb_account.db.primary_master_key
}
 
output "cosmosdb_secondary_key" {
  description = "The secondary key for the Cosmos DB account"
  value       = azurerm_cosmosdb_account.db.secondary_master_key
}
 
output "cosmosdb_connection_string" {
  description = "The connection string for the Cosmos DB account"
  value       = azurerm_cosmosdb_account.db.connection_strings[0]
}