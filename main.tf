data "aws_instances" "vpc-instances" {
  filter {
    name   = "vpc-id"
    values = ["vpc-0562f488e6d0cff5f"]
  }
}

output "instance-ids" {
  value = data.aws_instances.vpc-instances.ids
}
/*
module "stop-instance" {
  source = "./stop-ec2"
}
*/