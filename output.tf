# inf_01_vpc_flowlogs
output "vpc_id" {
  value = aws_vpc.proto_vpc.id
}

# inf_02_bastion_nacls_secgroups.tf
output "bastion_network_acl_id" {
  value = aws_network_acl.bastion_network_acl.id
}

output "bastion_security_group_id" {
  value = aws_security_group.bastion_security_group.id
}

# inf_03_public_nacls_secgroups.tf
output "public_network_acl_id" {
  value = aws_network_acl.public_network_acl.id
}

output "public_security_group_id" {
  value = aws_security_group.public_security_group.id
}

output "cluster_security_group_id" {
  value = aws_security_group.cluster_security_group.id
}

output "default_network_acl_id" {
  value = aws_default_network_acl.default_network_acl.id
}

output "default_security_group_id" {
  value = aws_default_security_group.default_security_group.id
}

# inf_04_private_nacls_secgroups.tf
output "private_network_acl_id" {
  value = aws_network_acl.private_network_acl.id
}

output "private_security_group_id" {
  value = aws_security_group.private_security_group.id
}

# inf_05_public_routes_gateways_subnets.tf
output "internet_gateway_id" {
  value = aws_internet_gateway.internet_gateway.id
}

output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
}

output "public_subnet_us_east_1a_id" {
  value = aws_subnet.public_subnet_us_east_1a.id
}

output "public_subnet_us_east_1b_id" {
  value = aws_subnet.public_subnet_us_east_1b.id
}

output "public_subnet_us_east_1c_id" {
  value = aws_subnet.public_subnet_us_east_1c.id
}

output "public_subnet_us_east_1d_id" {
  value = aws_subnet.public_subnet_us_east_1d.id
}

output "public_subnet_us_east_1e_id" {
  value = aws_subnet.public_subnet_us_east_1e.id
}

output "public_subnet_us_east_1f_id" {
  value = aws_subnet.public_subnet_us_east_1f.id
}

output "us_east_1_public_ngw_id" {
  value = aws_nat_gateway.us_east_1_public_ngw.id
}

# inf_06_private_routes_gateways_subnets.tf
output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

output "private_subnet_us_east_1a_id" {
  value = aws_subnet.private_subnet_us_east_1a.id
}

output "private_subnet_us_east_1b_id" {
  value = aws_subnet.private_subnet_us_east_1b.id
}

output "private_subnet_us_east_1c_id" {
  value = aws_subnet.private_subnet_us_east_1c.id
}

output "private_subnet_us_east_1d_id" {
  value = aws_subnet.private_subnet_us_east_1d.id
}

output "private_subnet_us_east_1e_id" {
  value = aws_subnet.private_subnet_us_east_1e.id
}

output "private_subnet_us_east_1f_id" {
  value = aws_subnet.private_subnet_us_east_1f.id
}

# inf_07_route53.tf
output "dns_private_zone_id" {
  value = aws_route53_zone.dns_private_zone.zone_id
}

output "dns_reverse_zone_id" {
  value = aws_route53_zone.dns_reverse_zone.zone_id
}
