locals {
  config = {
    dev = {
      vpc_name        = "vpc_tf_dev"
      vpc_cidr        = "10.1.0.0/24"
      public_subnets  = ["10.1.0.0/28", "10.1.0.16/28"]
      private_subnets = ["10.1.0.32/28", "10.1.0.48/28"]
      azs             = ["ap-south-1a", "ap-south-1b"]

      lb_sg_name      = "alb_sq_dev"
      public_sg_name  = "public_sq_dev"
      private_sg_name = "private_sq_dev"
      lb_name         = "alb-tf-dev"

      target_group_name = "lg-target-dev"
      certificate_arn   = "arn:aws:acm:ap-south-1:905418378622:certificate/50d376a0-bc69-4290-8951-7085df950adc"

      ubuntu_ami           = "ami-0ad21ae1d0696ad58"
      ubuntu_instance_type = "t2.micro"
    }
  }

  Environment = local.config.dev
}
