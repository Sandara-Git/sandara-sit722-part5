# Sets global variables for this Terraform project.

variable app_name {
  default = "sit722sandara2"
}

variable container_registry {
  default = "sit722sandara2cr"
}

variable location {
  default = "eastus"
}

variable kubernetes_version { 
  default = "1.29.7"   
}