resource "aws_vpc" "demo" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "demo" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_network_interface" "demo" {
  subnet_id = aws_subnet.demo.id

  tags = {
    Name = var.nic_name
  }
}

resource "aws_instance" "demo" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.demo.id

  network_interface {
    network_interface_id = aws_network_interface.demo.id
    device_index         = 0
  }

  tags = {
    Name = var.instance_name
  }
}
