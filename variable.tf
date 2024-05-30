variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
 
variable "location" {
  description = "The primary location for the Cosmos DB account"
  type        = string
}
 
variable "failover_location" {
  description = "The failover location for the Cosmos DB account"
  type        = string
}
 
variable "max_interval_in_seconds" {
  description = "The maximum interval in seconds for Bounded Staleness consistency"
  type        = number
  default     = 300
}
 
variable "max_staleness_prefix" {
  description = "The maximum staleness prefix for Bounded Staleness consistency"
  type        = number
  default     = 100000
}
 
variable "mongo_database_name" {
  description = "The name of the MongoDB database"
  type        = string
}
 
variable "mongo_database_throughput" {
  description = "The throughput for the MongoDB database"
  type        = number
  default     = 400
}
 