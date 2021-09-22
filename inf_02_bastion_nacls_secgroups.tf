resource "aws_network_acl" "bastion_network_acl" {
  vpc_id     = aws_vpc.proto_vpc.id
  subnet_ids = [aws_subnet.public_subnet_us_east_1a.id]
  depends_on = [aws_subnet.public_subnet_us_east_1a]

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-bastion-nacl"
    access = var.bastion_network_acl_tag_access
  }
}

resource "aws_security_group" "bastion_security_group" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-bastion-sg"
    access = var.bastion_security_group_tag_access
  }
}
