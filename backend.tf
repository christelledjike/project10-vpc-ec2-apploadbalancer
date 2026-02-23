terraform {
  backend "s3" {
    bucket         = "guguiuihhugu" #replace with your bucket
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "yfyufygg" # replace with your table
  }
}