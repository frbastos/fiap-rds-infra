locals {
  env             = "dev"
  # profile         = "fiap"
  region          = "us-east-1"
  vpc_id          = "vpc-008d410f1d34c3021"
  subnets_private = ["subnet-0329c3cf38b32e8fe", "subnet-0b5794ae05e699b02"]
  subnets_public  = ["subnet-0f34dc9eef5accee2", "subnet-034fa8fd296e5d02f"]
  sg_name = "rds-sg"
  rds_name = "lanchonetedb"
  rds_engine = "postgres"
  rds_family = "postgres15"
  rds_engine_version = "15.10"
  rds_username = "postgres"
  rds_password = "lFLNzNzl5p*^"
}
