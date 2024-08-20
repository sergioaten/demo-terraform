data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = var.ami_filter_name
  }

  filter {
    name   = "virtualization-type"
    values = var.ami_filter_virtualization_type
  }

  owners = var.ami_owners
}
