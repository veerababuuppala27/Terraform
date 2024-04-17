resource "aws_instance" "my_instance" {
    ami = "ahisdobqoeubou"
    instance_type = "t3micro"
    tenancy = "default"
    key_name = "xyz" #key pair 
    tags = {
      Name = "myinstance"
    }
}