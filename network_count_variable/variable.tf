variable "cidr_block" {
    type = string
    description = "this is for the VPC range"
  
}

variable "subnet_cidr_block" {
    type = list(string)
  
}

variable "subnet_tags" {
    type = list(string)

}