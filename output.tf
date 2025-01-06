output "instance_ips" {
  value = {
    "dev"        = aws_instance.example["dev"].public_ip
    "staging"    = aws_instance.example["staging"].public_ip
    "production" = aws_instance.example["production"].public_ip
  }
}

output "bucket_names" {
  value = {
    "dev"        = aws_s3_bucket.example["devi"].bucket
    "staging"    = aws_s3_bucket.example["stage"].bucket
    "production" = aws_s3_bucket.example["product"].bucket
  }
}

