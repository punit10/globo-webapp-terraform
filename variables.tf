
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t2.micro"
}

variable "api_key" {
  type        = string
  description = "(Required) API key for web app to talk to SaaS platform."
}

variable "key_name" {
  type        = string
  description = "(Required) Key name to give in ec2 already existing key in aws"
  default     = "LinuxKP"
}

# variable "vpc_id" {
#   type        = string
#   description = "(Required) VPC ID of VPC for application deployment."
# }

# variable "public_subnets" {
#   type        = map(string)
#   description = "(Optional) Map of public subnets to create with CIDR blocks. Key will be used as subnet name with prefix. Default: {subnet-1 ="
#   # default = {
#   #   public-1 = "10.42.10.0/24"
#   #   public-2 = "10.42.11.0/24"
#   # }
# }

variable "playbook_repository" {
  type        = string
  description = "(Required) URI of playbook_repository for now"
}

#tfe variable
variable "tfe_organization" {
  type        = string
  description = "(Required) TFE organization"
}

variable "tfe_workspace_name" {
  type        = string
  description = "(Required) TFE workspace name"
}