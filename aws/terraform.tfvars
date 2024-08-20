region = "us-west-2"

ami_filter_name                = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
ami_filter_virtualization_type = ["hvm"]
ami_owners                     = ["099720109477"]

vpc_name       = "demo-vpc"
vpc_cidr_block = "10.0.0.0/24"

subnet_name              = "demo-subnet"
subnet_cidr_block        = "10.0.0.0/27"
subnet_availability_zone = "us-west-2a"

nic_name = "demo-nic"

instance_name = "demo-instance"
instance_type = "t2.micro"
