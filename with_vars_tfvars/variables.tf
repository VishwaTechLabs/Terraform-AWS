variable "aws_region" {

  description = "AWS Region"
  type        = string

}

variable "access_key" {

  description = "AWS Access Key"
  type        = string

}

variable "secret_key" {

  description = "AWS Secret Key"
  type        = string

  sensitive = true

}
