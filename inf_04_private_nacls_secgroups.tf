resource "aws_network_acl" "private_network_acl" {
  vpc_id = aws_vpc.proto_vpc.id

  subnet_ids = [
    aws_subnet.private_subnet_us_east_1a.id,
    aws_subnet.private_subnet_us_east_1b.id,
    aws_subnet.private_subnet_us_east_1c.id,
    aws_subnet.private_subnet_us_east_1d.id,
    aws_subnet.private_subnet_us_east_1e.id,
    aws_subnet.private_subnet_us_east_1f.id
  ]

  depends_on = [
    aws_subnet.private_subnet_us_east_1a,
    aws_subnet.private_subnet_us_east_1b,
    aws_subnet.private_subnet_us_east_1c,
    aws_subnet.private_subnet_us_east_1d,
    aws_subnet.private_subnet_us_east_1e,
    aws_subnet.private_subnet_us_east_1f
  ]

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-private-nacl"
    access = var.private_network_acl_tag_access
  }
}


resource "aws_security_group" "private_security_group" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-private-sg"
    access = var.private_network_acl_tag_access
  }
}
