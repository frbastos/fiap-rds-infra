locals {
  env             = "dev"
  # profile         = "fiap"
  region          = "us-east-1"
  vpc_id          = "vpc-008d410f1d34c3021"
  security_group_id = "sg-0db5bdc61902e305c"
  subnets_private = ["subnet-01e6440e656ec6092", "subnet-0314707bfb8f170ae"]
  subnets_public  = ["subnet-0329c3cf38b32e8fe", "subnet-0b5794ae05e699b02"]
  sg_name = "rds-sg"
  rds_name = "lanchonetedb"
  rds_engine = "postgres"
  rds_family = "postgres15"
  rds_engine_version = "15.10"
  rds_username = "postgres"
  rds_password = "lFLNzNzl5p*^"
}
