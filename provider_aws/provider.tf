terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0" // 
    }
  }
}

## there are differet ways to define version accourding to ur requirement 
## 4th way is the best way to get latest version of pachechs fixed

/* 1. Equal constraint = terraform {
                           required_providers {
                             aws = {
                               source = "hashicorp/aws"
                               version = "=5.10.0"
                               }
                            }
                        }  

2. Not equal constraint = version "!=5.10.0"

3. Greater/less or equal to constraint = version = ">=5.10.0"

4. Allow only the most upright version to increment = version = "~>5.10.0"*/


#provider aws/azure/gcp or on premisis

provider "aws" {
    region =  ap-south-1(mumbai)  # provide the region where u need to deploy u r resource 
    access_key = AAAAAAAAAAAAAAAAA# generate these keys from aws console as terraform user and these keys have to generate with proper permission IAM(user)
    secret_key = DDDDDDDDDDDDDDDDDD# these keys should't be shared with others terraform user and resource restriction to whic ur requiremnt of resource
#best practice is to configure these keys in the local device because we apply our script form there
# for CI/CD or deployment through pipeline we need to pass these creds in the credientials part in jenkins/
 # or we can assigin a user to the jenkins (iam) that executes the script in the aws
}

# we can also provide multiple providers at the same time called terraform workspaces 

