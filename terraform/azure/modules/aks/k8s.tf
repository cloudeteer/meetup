#kubernetes deployment (AKS) 

resource "azurerm_kubernetes_cluster" "aks" {
  name                            = var.cluster_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  node_resource_group             = var.node_resource_group
  dns_prefix                      = var.dns_prefix
  kubernetes_version              = var.kubernetes_version
  private_cluster_enabled         = var.private_cluster_enabled
  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges


  network_profile {
    network_plugin    = var.network_plugin
    load_balancer_sku = var.load_balancer_sku
    outbound_type     = var.outbound_type
  }

  linux_profile {
    admin_username = var.admin_username

    ssh_key {
      key_data = file("${path.module}/files/id_rsa.pub")
    }
  }

  #Required for role_based_access_control (RBAC)
  dynamic role_based_access_control {
    for_each = var.rbac_enabled ? ["true"] : []
    content {
      azure_active_directory {
        server_app_id     = var.server_app_id
        server_app_secret = var.server_app_secret
        client_app_id     = var.client_app_id
      }
      enabled = true
    }
  }

  default_node_pool {
    name            = "agentpool"
    vm_size         = var.vm_size
    node_count      = var.agent_count
    type            = var.node_pool_type
    os_disk_size_gb = var.os_disk_size_gb
    vnet_subnet_id  = var.subnet_id
  }

  dynamic service_principal {
    for_each = var.client_id != "" && var.client_secret != "" ? ["service_principal"] : []
    content {
      client_id     = var.client_id
      client_secret = var.client_secret
    }
  }

  dynamic identity {
    for_each = var.client_id == "" || var.client_secret == "" ? ["identity"] : []
    content {
      type = "SystemAssigned"
    }
  }

  dynamic addon_profile {
    for_each = var.enable_log_analytics_workspace ? ["true"] : []
    content {
      oms_agent {
        enabled                    = true
        log_analytics_workspace_id = var.log_analytics_workspace_id
      }
    }
  }

  tags = var.tags
}