resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-igw"
    access = var.internet_gateway_tag_access
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.proto_vpc.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-rt"
    access = var.public_route_table_tag_access
  }
}

resource "aws_default_route_table" "default_route_table" {
  default_route_table_id = aws_vpc.proto_vpc.default_route_table_id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-default-rt"
    access = var.default_route_table_tag_access
  }
}

resource "aws_route" "public_internet_route" {
  route_table_id = aws_route_table.public_route_table.id

  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.internet_gateway.id
  depends_on             = [aws_route_table.public_route_table, aws_internet_gateway.internet_gateway]
}

resource "aws_subnet" "public_subnet_us_east_1a" {
  vpc_id = aws_vpc.proto_vpc.id

  availability_zone       = "us-east-1a"
  cidr_block              = var.public_subnet_us_east_1a_cidr_block
  map_public_ip_on_launch = var.public_subnet_us_east_1a_map_public_ip_on_launch

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-us-east-1a-sn"
    access = var.public_subnet_us_east_1a_tag_access
  }
}

resource "aws_route_table_association" "public_subnet_us_east_1a_public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_us_east_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "public_subnet_us_east_1b" {
  vpc_id                  = aws_vpc.proto_vpc.id
  availability_zone       = "us-east-1b"
  cidr_block              = var.public_subnet_us_east_1b_cidr_block
  map_public_ip_on_launch = var.public_subnet_us_east_1b_map_public_ip_on_launch

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-us-east-1b-sn"
    access = var.public_subnet_us_east_1b_tag_access
  }
}

resource "aws_route_table_association" "public_subnet_us_east_1b_public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_us_east_1b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "public_subnet_us_east_1c" {
  vpc_id                  = aws_vpc.proto_vpc.id
  availability_zone       = "us-east-1c"
  cidr_block              = var.public_subnet_us_east_1c_cidr_block
  map_public_ip_on_launch = var.public_subnet_us_east_1c_map_public_ip_on_launch

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-us-east-1c-sn"
    access = var.public_subnet_us_east_1c_tag_access
  }
}

resource "aws_route_table_association" "public_subnet_us_east_1c_public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_us_east_1c.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "public_subnet_us_east_1d" {
  vpc_id                  = aws_vpc.proto_vpc.id
  availability_zone       = "us-east-1d"
  cidr_block              = var.public_subnet_us_east_1d_cidr_block
  map_public_ip_on_launch = var.public_subnet_us_east_1d_map_public_ip_on_launch

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-us-east-1d-sn"
    access = var.public_subnet_us_east_1d_tag_access
  }
}

resource "aws_route_table_association" "public_subnet_us_east_1d_public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_us_east_1d.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_subnet" "public_subnet_us_east_1e" {
  vpc_id                  = aws_vpc.proto_vpc.id
  availability_zone       = "us-east-1e"
  cidr_block              = var.public_subnet_us_east_1e_cidr_block
  map_public_ip_on_launch = var.public_subnet_us_east_1e_map_public_ip_on_launch

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-us-east-1e-sn"
    access = var.public_subnet_us_east_1e_tag_access
  }
}

resource "aws_route_table_association" "public_subnet_us_east_1e_public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_us_east_1e.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "public_subnet_us_east_1f" {
  vpc_id                  = aws_vpc.proto_vpc.id
  availability_zone       = "us-east-1f"
  cidr_block              = var.public_subnet_us_east_1f_cidr_block
  map_public_ip_on_launch = var.public_subnet_us_east_1f_map_public_ip_on_launch

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-public-us-east-1f-sn"
    access = var.public_subnet_us_east_1f_tag_access
  }
}

resource "aws_route_table_association" "public_subnet_us_east_1f_public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_us_east_1f.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_eip" "us_east_1_ngw_eip" {
  vpc = true
}

resource "aws_nat_gateway" "us_east_1_public_ngw" {
  allocation_id = aws_eip.us_east_1_ngw_eip.id
  subnet_id     = aws_subnet.public_subnet_us_east_1a.id

  tags = {
    env    = var.environment
    Name   = "${var.environment}-useast1-ngw"
    access = var.us_east_1_public_ngw_tag_access
  }
}
