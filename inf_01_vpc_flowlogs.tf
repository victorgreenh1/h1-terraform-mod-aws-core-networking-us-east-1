resource "aws_vpc" "proto_vpc" {
  cidr_block                       = var.proto_vpc_cidr_block
  instance_tenancy                 = var.proto_vpc_instance_tenancy
  enable_dns_support               = var.proto_vpc_enable_dns_support
  enable_dns_hostnames             = var.proto_vpc_enable_dns_hostnames
  enable_classiclink               = var.proto_vpc_enable_classiclink
  enable_classiclink_dns_support   = var.proto_vpc_enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block = var.proto_vpc_assign_generated_ipv6_cidr_block

  tags = {
    env  = var.environment
    Name = "${var.environment}-useast1-vpc"
  }
}

resource "aws_flow_log" "vpc_accept_flow_logs" {
  log_destination      = var.vpc_accept_flow_logs_destination
  log_destination_type = "s3"
  traffic_type         = "ACCEPT"
  vpc_id               = aws_vpc.proto_vpc.id
}

resource "aws_flow_log" "vpc_reject_flow_logs" {
  log_destination      = var.vpc_reject_flow_logs_destination
  log_destination_type = "s3"
  traffic_type         = "REJECT"
  vpc_id               = aws_vpc.proto_vpc.id
}
