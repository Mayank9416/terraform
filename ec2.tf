# Generate a TLS private key
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create an AWS key pair using the generated public key
resource "aws_key_pair" "Pem_key" {
  key_name   = "example-key-pair"
  public_key = tls_private_key.example.public_key_openssh
}

# Creating 2 EC2 instances in the Public Subnet
resource "aws_instance" "demoinstance" {
  count                       = 2
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.Pem_key.key_name
  vpc_security_group_ids      = [aws_security_group.webserver_sg.id]
  subnet_id                   = element(module.vpc.public_subnets, 0)
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "My Public Instance"
  }
}
