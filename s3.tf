resource "aws_s3_bucket" "this" {
  bucket = "curso-terraform-${var.environment}-${random_pet.rd_pet.id}-${random_password.rd_password.result}-${random_integer.rd_integer.id}"
  tags = local.common_tags
}

resource "aws_s3_object" "pizza" { # Ao usar "this" estamos referenciando o objeto criado acima
  # Pega o nome da Bucket criada acima
  bucket       = aws_s3_bucket.this.bucket 
  # Path para salvar seu arquivo na AWS
  #  key          = "myFiles/data/pizza.json"
  key          = "${local.data_myFiles_path}/${local.file_names.1}" 

  # Path de onde encontrar o arquivo na sua máquina local
  # source       = "upload/data/pizza.json" 
  source       = "${local.data_aws_path}/${local.file_names.1}" 

  # (Optional) Standard MIME type
  content_type = "application/json" 
}

resource "aws_s3_object" "img1" { 
  bucket       = aws_s3_bucket.this.bucket 
  key          =  "${local.img_myFiles_path}/${local.file_names.2}" # "myFiles/img/cat.jpeg"  
  source       =  "${local.img_aws_path}/${local.file_names.2}"     # "upload/img/cat.jpeg" 
}

resource "aws_s3_object" "img2" { 
  bucket       = aws_s3_bucket.this.bucket 
  key          = "${local.img_myFiles_path}/${local.file_names.3}"  # "myFiles/img/flower.jpeg"
  source       = "${local.img_aws_path}/${local.file_names.3}"      # "upload/img/flower.jpeg" 
}