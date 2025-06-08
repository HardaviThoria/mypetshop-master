provider "aws" {
  region = var.aws_primary_region
}

# This is a minimal network configuration
# In a real environment, you would define VPC, subnets, etc.
output "network_ready" {
  value = "true"
} 