locals {
  config = {
    dev = {
      vpc_name        = "vpc_dev"
      vpc_cidr        = "10.1.0.0/24"
      public_subnets  = ["10.1.0.0/28", "10.1.0.16/28"]
      private_subnets = ["10.1.0.32/28"]
      azs             = ["ap-south-1a", "ap-south-1b"]

      alb_sg_name     = "alb_sq_dev"
      public_sg_name  = "public_sq_dev"
      private_sg_name = "private_sq_dev"
      alb_name        = "alb-dev"

      target_group_1_name = "lg-target-1-dev"
      target_group_2_name = "lg-target-2-dev"
      my_certificate_arn  = "arn:aws:acm:ap-south-1:905418378622:certificate/997bac17-1ddd-4bd9-aed7-013dab41e284"

      my_domains = ["jenkins.test.dhawal.in.net", "app.test.dhawal.in.net"]

      public_instance_ami   = "ami-0ad21ae1d0696ad58"
      public_instance_type  = "t2.micro"
      private_instance_ami  = "ami-0ad21ae1d0696ad58"
      private_instance_type = "t2.medium"
    }
  }

  Environment = local.config.dev
}
