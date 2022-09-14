locals {
  data_aws_path     = "upload/data"
  data_myFiles_path = "myFiles/data"

  img_aws_path     = "upload/img"
  img_myFiles_path = "myFiles/img"

  file_names = {
    1 = "pizza.json"
    2 = "cat.jpeg"
    3 = "flower.jpeg"
  }

  common_tags = {
    Service     = "Tutorial Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Your ID"
  }
}
