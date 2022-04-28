variable "aws_region" {
  description = "aws_region"
  type        = string
  default     = "ap-south-1"
}
variable "aws_access_key" {
  description = "aws_access_key"
  type        = string
  default     = "AKIA2MOZQMOCVRVZXNNZ"
}
variable "aws_secret_key" {
  description = "aws_secret_key"
  type        = string
  default     = "MTZ0UPhV21zn07Wl4/5kSnODvM9Dv+b9TjbXFhm5"
}
variable "ec2_instance_type" {
  description = "ec2_instance_type"
  type        = string
  default     = "t3.small"
}
variable "ec2_ami" {
  description = "ec2_ami"
  type        = string
  default     = "ami-0851b76e8b1bce90b"
}

variable "storage_size" {
  description = "storage_size"
  type        = string
  default     = "50"
}
variable "sns-email" {
  description = "storage_size"
  type        = string
  default     = "hkhare25@gmail.com"
}

variable "db_user" {
  description = "storage_size"
  type        = string
  default     = "adminuser"
}

variable "db_password" {
  description = "storage_size"
  type        = string
  default     = "dxq)36b#+QbCs.A)"
}

variable "server_key_name" {
  type = string
  default = "astrojudge"
}
