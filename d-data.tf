data "aws_availability_zones" "availability" {
  state = "available"
}

output "working_azs" {
  value = tolist(data.aws_availability_zones.availability.names)
}