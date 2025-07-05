resource "azurerm_resource_group" "rg" {
for_each = tomap(var.rg_name)
  name     = each.key
  location = each.value
}