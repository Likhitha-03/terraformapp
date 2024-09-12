variable "vpc_id" {
  description = "The ID of the existing VPC"
  type        = string
  default     = "vpc-0ecd36c175ff7f71f"
}

variable "subnet_id" {
  description = "The ID of the existing subnet"
  type        = string
  default     = "subnet-0fced310d34fde07b"
}

variable "security_group_id" {
  description = "The ID of the existing security group"
  type        = string
  default     = "sg-0bbc5e6ba111a1bbf"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

