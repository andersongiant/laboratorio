provider "aws" {
  version = "~> 4.37.0"
  region = "us-east-1" 
}

resource "aws_instance" "dev" {
    count = 2
    ami           = "ami-0149b2da6ceec4bb0"
    instance_type = "t2.micro"
    key_name      = "terraform"
    tags = {
      Name        = "dev${count.index}"
    }
   # vpc_security_group_ids = ["sg-092d8626a637be9f9"]
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]  # usando modo referencia para vpc
}    

resource "aws_instance" "dev3" {
    ami           = "ami-09a41e26df464c548"
    instance_type = "t2.micro"
    key_name      = "terraform"
    tags = {
      Name        = "dev3"
    }
   # vpc_security_group_ids = ["sg-092d8626a637be9f9"]
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]  # usando modo referencia para vpc
    
}   






 