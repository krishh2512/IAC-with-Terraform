provider "aws" {
  region = "eu-west-1"
}

module "rds" {
  source = "terraform-aws-modules/rds/aws"
  version = "~> 2.0"

  name = "project"
  engine = "postgres"
  engine_version = "14.4"
  instance_class = "db.t2.micro"
  allocated_storage = 20
  storage_type = "gp2"
  vpc_security_group_ids = ["sg-01234567890abcdef0"]
  subnet_id = "subnet-01234567890abcdef0"
  username = <secrets.username>
  password = <secrets.password>
}

