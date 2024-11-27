#data block is used to read already present resource in cloud.
data "aws_ami" "amazon-linux-3" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

#resource block is used to create resource in cloud
resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon-linux-3.id
  instance_type = var.instance_type
  count         = var.insatance_count

  tags = {
    Name = "ProdServer"
  }
}


