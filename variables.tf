variable "client_id" {}
variable "client_secret" {}

variable "agent_count" {
    default = 1
}
variable "vm_size" {
    default = "Standard_B2s"
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "aks"
}

variable cluster_name {
    default = "aks-cluster"
}

variable resource_group_name {
    default = "aks-rg"
}

variable location {
    default = "japaneast"
}

variable log_analytics_workspace_name {
    default = "aks-log-mickey390"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "japaneast"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}