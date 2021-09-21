resource "aws_network_acl" "public_network_acl" {
  vpc_id = aws_vpc.proto_vpc.id

  subnet_ids = [
    aws_subnet.public_subnet_us_east_1b.id,
    aws_subnet.public_subnet_us_east_1c.id,
    aws_subnet.public_subnet_us_east_1d.id,
    aws_subnet.public_subnet_us_east_1e.id,
    aws_subnet.public_subnet_us_east_1f.id
  ]

  depends_on = [
    aws_subnet.public_subnet_us_east_1b,
    aws_subnet.public_subnet_us_east_1c,
    aws_subnet.public_subnet_us_east_1d,
    aws_subnet.public_subnet_us_east_1e,
    aws_subnet.public_subnet_us_east_1f
  ]

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-nacl"
    access = var.public_network_acl_tag_access
  }

}

resource "aws_default_network_acl" "default_network_acl" {
  default_network_acl_id = aws_vpc.proto_vpc.default_network_acl_id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-default-nacl"
    access = var.default_network_acl_tag_access
  }

}

resource "aws_security_group" "public_security_group" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-sg"
    access = var.public_security_group_tag_access
  }
}

resource "aws_default_security_group" "default_security_group" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-default-sg"
    access = var.default_security_group_tag_access
  }
}

resource "aws_security_group" "cluster_security_group" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-cluster-sg"
    access = var.cluster_security_group_tag_access
  }
}
