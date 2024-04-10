resource "aws_vpc" "My_learnings" {
    cidr_block = var.cidr_block
    instance_tenancy = "default"

    tags = {
        Name = "my_vpc"
    }
    
}

resource "aws_subnet" "subnets_for_My_learnings" {
    count = length(var.subnet_cidr_block) # this is the function that is used when we define ip ranges defined in variables 
    vpc_id = aws_vpc.My_learnings.id
    cidr_block = var.subnet_cidr_block[count.index]

    tags = {
      Name = length(var.subnet_tags)
    }
    
}

