data "aws_ami" "server_ami" {
  most_recent = true
  owners      = var.owners

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*"]
  }
}