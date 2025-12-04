terraform {
  backend "s3" {
    bucket = "yashyb-terraform-bucket"
    key    = "backend/ToDo-App.tfstate"
    region = "ap-south-1"
    dynamodb_table = "DynamoDB-terraform"
  }
}
