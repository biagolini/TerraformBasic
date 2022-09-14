output "bucket_name" {
  value     = aws_s3_bucket.this.bucket
  sensitive = true # Você tem que confirmar que está ciente de que passar esse output pode rever dados sensíveis. Com esse argumento o Terraform garante que o responsável pelo código tem ciência do risco.
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = ""
}

output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "path_file_1" {
  value     = "${aws_s3_bucket.this.bucket}/${aws_s3_object.pizza.key}"
  sensitive = true
}

output "path_file_2" {
  value     = "${aws_s3_bucket.this.bucket}/${aws_s3_object.img1.key}"
  sensitive = true
}

output "path_file_3" {
  value     = "${aws_s3_bucket.this.bucket}/${aws_s3_object.img2.key}"
  sensitive = true
}
