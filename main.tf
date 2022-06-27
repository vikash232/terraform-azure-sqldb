provider "azurerm" {
  features {}
}

module "sql-database" {
  source              = "./sqldb"
  resource_group_name = var.resource_group_name
  location            = var.location
  db_name             = var.db_name
  sql_admin_username  = var.sql_admin_username
  sql_password        = var.sql_password

  tags = {
    environment = "dev"
    costcenter  = "it"
  }

}
