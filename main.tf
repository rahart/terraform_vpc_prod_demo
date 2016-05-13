provider "aws" {
  region = "${var.aws_region}"
}

module "prod-demo" {
  source = "git::ssh://git@github.com/rahart/terraform_vpc_environment.git"
  vpc_name="util -- "
  region = "${var.aws_region}"
  environment="${var.environment}"
  vpc_cidr="10.16.0.0/16"
  public_subnets = "10.16.1.0/24,10.16.2.0/24,10.16.3.0/24"
  private_subnets = "10.16.4.0/24,10.16.5.0/24,10.16.6.0/24"
  availabilty_zones = "${lookup(var.availablity_zones, var.aws_region)}"
}

output "vpcid" {
    value = "${module.prod-demo.vpc_id}"
}

output "hm" {
    value ="${module.prod-demo.hm}"
}
