resource "aws_instance" "web-server-instance" {
  ami               = data.aws_ami.server_ami.id
  instance_type     = "t4g.small"
  availability_zone = "ap-south-1a"
  key_name          = aws_key_pair.serverkey.id

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web_server_nic.id
  }

  root_block_device {
    volume_size = 10
  }

  user_data = file("userdata.tpl")

  tags = {
    Name = "web-server"
  }
}