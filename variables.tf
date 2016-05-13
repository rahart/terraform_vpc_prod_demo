variable "aws_region" {
    default = "us-east-1"
}

variable "environment" {
    default = "production"
}

variable availablity_zones{
    default = {
      us-west-2 = "us-west-2a,us-west-2b,us-west-2c"
      us-east-1 = "us-east-1b,us-east-1d,us-east-1e"
    }
}
