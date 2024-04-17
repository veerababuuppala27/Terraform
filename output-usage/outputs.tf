output "public_ip" {
    value = aws_instance.my_instance.public_ip
    description = "this is for demo purpose"
  
}
# input variable is used to parametrize the values of the resource insted of hard coding
 # which helps in reuseability of the scripts that are written and easy to handel
# output variables are used to get the value of the resource punlic ip or bucket id or etc 
