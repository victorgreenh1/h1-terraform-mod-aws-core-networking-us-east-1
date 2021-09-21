# inf_01_vpc_flowlogs
variable "environment" {
  type = string
}

variable "proto_vpc_cidr_block" {
  description = "Slash 16 cidr block for this vpc"
  type = string
}

variable "proto_vpc_instance_tenancy" {
  description = "Instance Tenancy"
  type = string
}

variable "proto_vpc_enable_dns_support" {
  description = "Dns Support"
  type = bool
}

variable "proto_vpc_enable_dns_hostnames" {
  description = "DNS Hostnames"
  type = bool
}

variable "proto_vpc_enable_classiclink" {
  description = "Classic Link"
  type = bool
}

variable "proto_vpc_enable_classiclink_dns_support" {
  description = "Classic Link DNS Support"
  type = bool
}

variable "proto_vpc_assign_generated_ipv6_cidr_block" {
  description = "Generate IPV6 CIDR Block"
  type = bool
}

variable "vpc_accept_flow_logs_destination" {
  description = "Log Destination"
  type = string
  #default = "arn:aws:s3:::h1-env-infra/vpclogs/accept"
}

variable "vpc_reject_flow_logs_destination" {
  description = "Log Destination"
  type = string
  #default = "arn:aws:s3:::h1-env-infra/vpclogs/reject"
}


# inf_02_bastion_nacls_secgroups
variable "bastion_network_acl_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "bastion_security_group_tag_access" {
  description = "Access"
  type = string
  default = "public"
}


# inf_03_public_nacls_secgroups
variable "public_network_acl_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "default_network_acl_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "public_security_group_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "cluster_security_group_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "default_security_group_tag_access" {
  description = "Access"
  type = string
  default = "public"
}


# inf_04_private_nacls_secgroups
variable "private_network_acl_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "private_security_group_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "internet_gateway_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "public_route_table_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "default_route_table_tag_access" {
  description = "Access"
  type = string
  default = "public"
}

variable "public_subnet_us_east_1a_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "public_subnet_us_east_1a_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "public_subnet_us_east_1a_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}

variable "public_subnet_us_east_1b_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "public_subnet_us_east_1b_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "public_subnet_us_east_1b_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}

variable "public_subnet_us_east_1c_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "public_subnet_us_east_1c_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "public_subnet_us_east_1c_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}

variable "public_subnet_us_east_1d_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "public_subnet_us_east_1d_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "public_subnet_us_east_1d_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}

variable "public_subnet_us_east_1e_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "public_subnet_us_east_1e_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "public_subnet_us_east_1e_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}

variable "public_subnet_us_east_1f_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "public_subnet_us_east_1f_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "public_subnet_us_east_1f_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}

variable "us_east_1_public_ngw_tag_access"  {
  description = "Access"
  type = string
  default = "public"
}


# inf_06_private_routes_gateways_subnets.tf
variable "private_route_table_tag_access" {
  description = "Access"
  type = string
  default = "private"
}

variable "private_subnet_us_east_1a_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "private_subnet_us_east_1a_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "private_subnet_us_east_1a_tag_access"  {
  description = "Access"
  type = string
  default = "private"
}

variable "private_subnet_us_east_1b_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "private_subnet_us_east_1b_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "private_subnet_us_east_1b_tag_access"  {
  description = "Access"
  type = string
  default = "private"
}

variable "private_subnet_us_east_1c_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "private_subnet_us_east_1c_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "private_subnet_us_east_1c_tag_access"  {
  description = "Access"
  type = string
  default = "private"
}

variable "private_subnet_us_east_1d_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "private_subnet_us_east_1d_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "private_subnet_us_east_1d_tag_access"  {
  description = "Access"
  type = string
  default = "private"
}

variable "private_subnet_us_east_1e_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "private_subnet_us_east_1e_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "private_subnet_us_east_1e_tag_access"  {
  description = "Access"
  type = string
  default = "private"
}

variable "private_subnet_us_east_1f_cidr_block" {
  description = "CIDR BLOCK"
  type = string
}

variable "private_subnet_us_east_1f_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
}

variable "private_subnet_us_east_1f_tag_access"  {
  description = "Access"
  type = string
  default = "private"
}


# inf_07_route53.tf
variable "dns_private_zone_name" {
  description = "private_zone"
  type = string
}

variable "dns_reverse_zone_name" {
  description = "reverse zone"
  type = string
}
