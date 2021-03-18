variable "subnet_id" {
  description = "subnet id where aks cluster subnet will be created"
  default     = ""
}

variable "client_id" {
  description = "Service principal client id"
  default     = ""
}

variable "client_secret" {
  description = "Service principal client secret"
  default     = ""
}

variable "agent_count" {
  description = "Node count for AKS cluster , please use minimum 3 node aks cluster"
  default     = ""
}

variable "dns_prefix" {
  description = "dns prefix for aks cluster"
  default     = ""
}

variable cluster_name {
  description = "AKS Cluster name"
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  default     = ""
}

variable "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = ""
}

#azure AD serverapp secret - for RBAC enabled AKS
variable "server_app_secret" {
  description = "Server app secret for rbac enabled aks cluster"
  default     = ""
}

#azure AD serverapp id - for RBAC enabled AKS
variable "server_app_id" {
  description = " Server app id for rbac enabled aks cluster"
  default     = ""
}

#azure AD clientapp id - for RBAC enabled AKS
variable "client_app_id" {
  description = "Client app id for rbac enabled aks cluster"
  default     = ""
}

variable "kubernetes_version" {
  description = "kubernetes version to be used for aks cluster"
  default     = ""
}

variable "rbac_enabled" {
  description = "This variable will have boolean value , true or false , when set to true , aks is rbac enabled , if false aks is created without rbac enabled"
  type        = bool
  default     = false
}

variable "vm_size" {
  description = "Size of the agents for aks cluster, like ds2_v2 , ds11_v2"
  default     = ""

}

variable "os_disk_size_gb" {
  description = "os disk size of the agent machines"
  default     = ""
}

variable "node_resource_group" {
  description = "(Optional) The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created."
  default     = ""
  # note : Azure requires that a new, non-existent Resource Group is used, as otherwise the provisioning of the Kubernetes Service will fail.
}

variable "private_cluster_enabled" {
  description = "Should this Kubernetes Cluster have it's API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
  default     = false
}

variable "network_plugin" {
  description = "(Required) Network plugin to use for networking. Currently supported values are azure and kubenet. Changing this forces a new resource to be created."
  default     = "kubenet"
}

variable "load_balancer_sku" {
  description = "(Optional) Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are Basic and Standard. Defaults to Standard."
  default     = "Standard"
}

variable "oms_agent" {
  description = "(Required) Is the OMS Agent Enabled, possible values true or false"
  default     = false
}

variable "enable_log_analytics_workspace" {
  type        = bool
  description = "Enable the creation of azurerm_log_analytics_workspace and azurerm_log_analytics_solution or not"
  default     = false
}

variable "log_analytics_workspace_id" {
  description = "Resource id of the log analytics workspace for container insights"
  default     = ""
}

variable "tags" {
  type        = map(string)
  description = "Mandatory tags to use for Azure resources"

  default = {
    environment = "__environment__"
    owner       = "__owner__"
    project     = "__project__"
    sre-type    = "__sre-type__"
    sre-team    = "__sre-team__"
    cost-center = "__cost-center__"
  }
}

variable "admin_username" {
  description = "The admin username of the VM that will be deployed"
  default     = ""
}


variable "api_server_authorized_ip_ranges" {
  description = "(Optional) The IP ranges to whitelist for incoming traffic to the masters."
  default     = []
}

variable "outbound_type" {
  description = "(Optional) The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer and userDefinedRouting. Defaults to loadBalancer."
  default     = "loadBalancer"
}

variable "node_pool_type" {
  description = "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets."
  default     = "VirtualMachineScaleSets"
}