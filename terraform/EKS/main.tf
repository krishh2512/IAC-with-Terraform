provider "aws" {
  region = "eu-west-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "project-vpc"
  cidr = "10.0.0.0/16"
  azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version      = "17.24.0"
  cluster_name = "project"
  cluster_version = "1.23"
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capaicty     = 1
      availabilityZones: ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
      instance_type = "t3.medium"
      capacity_type  = "SPOT"
    }
  }

  manage_aws_auth = false
}
