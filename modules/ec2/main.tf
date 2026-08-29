resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name        = "Webserver-${var.environment}"
    Managed_by  = "Terraform"
    Cost_Center = "DevOps"
    Environment = var.environment
  }
}
