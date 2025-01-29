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
  default = "ami-05fa46471b02db0ce"
}

variable "bucket_prefix" {
  default = "terraenv"
}
