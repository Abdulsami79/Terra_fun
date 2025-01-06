variable "environments" {
  default = ["devi", "stage", "product"]
}

variable "vpc_id" {
  default = "vpc-vpc-00527cdfa7df32"
}

variable "subnet_id" {
  default = "subnet-subnet-0e03543074156f098"
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
