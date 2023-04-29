#use  terraform list and terraform state to see list of availble properties

output "server_public_ip" {
  value = aws_eip.one.public_ip
}

output "aws_db_instance_host" {
  value = aws_db_instance.db_instance.address
}