#########################################################################
# Azure
#########################################################################
# default tenant is "Chef (getchef.onmicrosoft.com)"
variable "arm_tenant_id" {
  type        = string
  description = "Unique identifier of the Azure tenant used for authentication."
  default     = "a2b2d6bc-afe1-4696-9c37-f97a7ac416d7"
}

# default subscription is "Engineering Dev/Test"
variable "arm_subscription_id" {
  type        = string
  description = "Unique identifier of the Azure subscription used for billing."
  default     = "80b824de-ec53-4116-9868-3deeab10b0cd"
}

variable "arm_location" {
  type        = string
  description = "Name of the Azure location to create instances in."
  default     = "westus2"
}

variable "arm_resource_group_name" {
  type        = string
  description = "Name of the Azure resource group where tests will be run."
  default     = ""
}

variable "arm_department" {
  type        = string
  description = "Department that owns the resources should be one of: EngServ, Operations, Eng, Training, Solutions, Sales, BD, Success or Partner"
}

variable "arm_contact" {
  type        = string
  description = "The primary contact for the resources, this should be the IAM username and must be able to receive email by appending @chef.io to it (this person can explain what/why, might not be the business owner)."
}

variable "arm_ssh_key_file" {
  type        = string
  description = "File location of the SSH public key used to access the instance."
  default     = "~/.ssh/id_rsa.pub"
}

variable "arm_instance_type" {
  type        = string
  description = "Name of the Azure instance type used to determine size of instances."
  default     = "Standard_D2_v3"
}

variable "platform" {
  type        = string
  description = "Operating System of the instance to be created."
}

variable "build_prefix" {
  type        = string
  description = "Optional build identifier for differentiating scenario runs."
  default     = ""
}

#########################################################################
# Chef Server
#########################################################################
variable "scenario" {
  type        = string
  description = "The name of the scenario being executed."
}

variable "upgrade_version_url" {
  type        = string
  description = "The URL to a chef-server used during initial install."
}

#########################################################################
# Optional Tests
#########################################################################

variable "enable_smoke_test" {
  type        = string
  description = "Enable Chef Infra Server smoke test."
  default     = "true"
}

variable "enable_pedant_test" {
  type        = string
  description = "Enable full Chef Infra Server pedant test."
  default     = "true"
}

variable "enable_psql_test" {
  type        = string
  description = "Enable testing of Chef Infra Server PostgreSQL database."
  default     = "true"
}

variable "enable_gather_logs_test" {
  type        = string
  description = "Enable testing of Chef Infra Server gathering logs."
  default     = "true"
}

variable "enable_addon_push_jobs" {
  type        = string
  description = "Enable testing of Push Jobs addon."
  default     = "true"
}

variable "enable_addon_chef_manage" {
  type        = string
  description = "Enable testing of Chef Manage addon."
  default     = "true"
}
