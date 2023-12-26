data "aws_subnets" "vpc_subnets" {

  filter {
    name   = "tag:Name"
    values = ["db_private_subnet_1","db_private_subnet_2"]
  }

  # Add more filters or adjust as needed
}
