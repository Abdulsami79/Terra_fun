output "instance_ips" {
  value = {
    "devi"        = aws_instance.example["devi"].public_ip
    "stage"    = aws_instance.example["stage"].public_ip
    "product" = aws_instance.example["product"].public_ip
  }
}

output "bucket_names" {
  value = {
    "devi"        = aws_s3_bucket.example["devi"].bucket
    "stage"    = aws_s3_bucket.example["stage"].bucket
    "product" = aws_s3_bucket.example["product"].bucket
  }
}

