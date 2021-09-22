# inf_07_route53.tf
resource "aws_route53_zone" "dns_private_zone" {
  name = var.dns_private_zone_name
  vpc {
    vpc_id = aws_vpc.proto_vpc.id
  }
}

resource "aws_route53_zone" "dns_reverse_zone" {
  name = var.dns_reverse_zone_name
  vpc {
    vpc_id = aws_vpc.proto_vpc.id
  }
}
