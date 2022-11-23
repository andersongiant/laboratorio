resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "Service ssh"
    cidr_blocks = ["0.0.0.0/0"]

  }
 
  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    description     = "Service tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    description     = "Service tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
      from_port       = 0
      to_port         = 65535
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
    }

   tags = {
    name = "ssh"
  }
  
} 

