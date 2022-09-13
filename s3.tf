resource "aws_s3_bucket" "this" {
  bucket = "curso-terraform-${var.environment}-${random_pet.rd_pet.id}-${random_password.rd_password.result}-${random_integer.rd_integer.id}"

  tags = {
    Service     = "Tutorial Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Your ID"
  }
}
