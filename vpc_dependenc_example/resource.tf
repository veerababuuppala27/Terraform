resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr-block
  instance_tenancy = "default"
  
  tags = {
      Name = "sample vpc"
    }
}

resource "aws_subnet" "subnets" {
   for_each = length(var.subnets-public)
   vpc_id = aws_vpc.my_vpc.id
   cidr_block = var.cidr-block

   depends_on = [ 
    aws_vpc.my_vpc
    ]
  
}