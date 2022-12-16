Terraform Module to run an ec2 instance that is running Apache

Not intended to be used in production

```hcl
    terraform {

}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}

module "apache" {
  source        = ".//terraform-aws-apache-example"
  vpc_id        = "vpc-VPC_ID"
  instance_type = "t2.micro"
  public_key    = "ssh-rsa AAAAAA...."
  server_name = "apache-server"
}

output "name" {
  value = module.apache.public_ip
}
  

```