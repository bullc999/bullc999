locals {
  firewall_ip         = local.environment == "prod" ? local.prod_firewall_ip : local.dev_firewall_ip
  prod_firewall_ip    = ""
  dev_firewall_ip     = ""
  prod_hub_vnet_id    = "/subscriptions/${local.logmon_prod_subscription_id}/resourceGroups/hub-vnet/providers/Microsoft.Network/virtualNetworks/hub-vnet"
  dev_hub_vnet_id     = "/subscriptions/${local.logmon_dev_subscription_id}/resourceGroups/hub-vnet/providers/Microsoft.Network/virtualNetworks/hub-vnet"
  prod_group_name = "Prod_hub-peering"
  dev_hub_group_name  = "Dev_hub-peering"

  logmon_prod_subscription_id = ""
  logmon_dev_subscription_id  = ""

  environment = var.tags["environment"] == "prod" ? "prod" : "dev"

