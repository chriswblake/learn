resource "azurerm_resource_group" "my" {
  name     = "my-rg"
  location = "northeurope"
}

resource "azurerm_app_service_plan" "my" {
  name                = "my-asp"
  location            = "northeurope"
  resource_group_name = "my-rg"
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "my" {
  name                = "my-appsvc"
  location            = "northeurope"
  resource_group_name = "my-rg"
  app_service_plan_id = azurerm_app_service_plan.my.id
}