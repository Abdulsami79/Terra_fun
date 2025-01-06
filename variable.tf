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
