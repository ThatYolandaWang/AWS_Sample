provider "aws" {
  region = var.region
  access_key = var.access_key # Required
  secret_key = var.secret_key # Required
}

# Create EC2 instances
resource "aws_instance" "hcp_site_ec2" {

  ami                         = var.ami # This is the ami of Windows Server 2019, from customer's AMI
  instance_type               = var.instance
  key_name                    = var.keypairs # pem file downloaded from AWS
  subnet_id                   = var.subnet
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.sg]

  tags = {
    Name                      = var.site_name #Required
  }
}

# Create EBS for EC2
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.available_zone
  size              = var.ebs_volume_size
  type              = "gp3"
  tags = {
    Name                      = "${var.site_name}_volume_data"
  }
}

# Assign EC2 and EBS
resource "aws_volume_attachment" "ebs_volume_attachment" {
  device_name                 = "/dev/xvdh"
  volume_id                   = aws_ebs_volume.ebs_volume.id
  instance_id                 = aws_instance.hcp_site_ec2.id
}
