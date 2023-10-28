provider "azurerm" {
  features = {}
}

module "networking" {
  source   = "./modules/networking"
  // other variables to pass
}

module "compute" {
  source   = "./modules/compute"
  // other variables to pass
}

module "storage" {
  source   = "./modules/storage"
  // other variables to pass
}
