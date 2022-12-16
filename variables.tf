variable "vpc_id" {
 type = string
  
}

variable "public_key" {
 type = string 
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "server_name" {
  type = string
  default = "apache-server"
}