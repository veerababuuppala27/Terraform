cidr_block = "10.10.0.0/16"
subnets = cidrsubnet(10.10.0.0/16, 8, 4) #cidrsubnet(prefix, newbits, netnum)cidrsubnet calculates a subnet address within given IP network address prefix.
