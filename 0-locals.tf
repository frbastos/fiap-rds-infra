locals {
  env             = "dev"
  # profile         = "fiap"
  region          = "us-east-1"
  vpc_id          = "vpc-0a67f18d66d797758"
  security_group_id = "sg-0db5bdc61902e305c"
  subnets_private = ["subnet-07623d0b0bc797af8", "subnet-07623d0b0bc797af8"]
  subnets_public  = ["subnet-0ae12bd2383746876", "subnet-099c4024cfd741846"]
  rds_name = "lanchonetedb"
  rds_engine = "postgres"
  rds_family = "postgres15"
  rds_engine_version = "15.10"
  rds_username = "postgres"
  rds_password = "lFLNzNzl5p*^"
}

variable "aws_profile" {
  default = null
}
