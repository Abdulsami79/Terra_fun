variable "environments" {
  default = ["devi", "stage", "product"]
}

variable "vpc_id" {
  default = "vpc-00527cdfa7df32fee"
}

variable "subnet_id" {
  default = "subnet-0e03543074156f098"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0fd05997b4dff7aac"
}

variable "bucket_prefix" {
  default = "terraenv"
}

# Create EC2 instances for each environment in the "environments" list
resource "aws_instance" "example" {
  for_each = toset(var.environments)

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [sg-0da5061dc2d507425]  # Use a security group for your instance

  tags = {
    Name        = "${var.bucket_prefix}-${each.key}"
    Environment = each.key
  }
}

# Define a security group for the instances (you can customize the rules as needed)
resource "aws_security_group" "example_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example-sg"
  }
}
