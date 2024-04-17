variable "cidr-block" {
    type = string
    description = "this the vpc range to launch and maintain resource"
}
variable "subnets-public" {
    type = set(string) #if we use for_each condtion then we uses set in variables 
    description = "subnets that matches the cidr range"
}