module "network" {
  source  = "app.terraform.io/cognitionIT/network/azurerm"
  version = "3.0.1"
  # insert required variables here
  resource_group_name = "${var.prefix}-workshop"
  address_space       = "10.10.0.0/16"
  subnet_prefixes     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  tags = {
    Department = "devops"
    Billable  = "true"
  }
}