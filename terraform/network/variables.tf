variable "aws_primary_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "account_name" {
  description = "The name of the AWS account/environment"
  type        = string
}

variable "canonicalName" {
  description = "Prefix for resource names"
  type        = string
}

variable "deploy_network_stack" {
  description = "Whether to deploy network stack"
  type        = string
}

variable "deploy_application_stack" {
  description = "Whether to deploy application stack"
  type        = string
}

variable "deploy_application" {
  description = "Whether to deploy application"
  type        = string
}

variable "deploy_grrepo" {
  description = "Whether to deploy gr repo"
  type        = string
}

variable "deploy_grstats" {
  description = "Whether to deploy gr stats"
  type        = string
}

variable "deploy_jobserver" {
  description = "Whether to deploy job server"
  type        = string
}

variable "deploy_license" {
  description = "Whether to deploy license"
  type        = string
}

variable "deploy_grweb" {
  description = "Whether to deploy gr web"
  type        = string
}

variable "deploy_dwh" {
  description = "Whether to deploy data warehouse"
  type        = string
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate"
  type        = string
}

variable "is_dr" {
  description = "Whether this is a DR environment"
  type        = string
}

variable "dr_rds_writer" {
  description = "DR RDS writer endpoint"
  type        = string
}

variable "dr_rds_reader" {
  description = "DR RDS reader endpoint"
  type        = string
}

variable "dr_rds_password" {
  description = "DR RDS password"
  type        = string
} 