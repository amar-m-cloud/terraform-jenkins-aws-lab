module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${var.name}"

  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "${var.instancetype}"

  tags = {
    Terraform   = "${var.name}"
    Environment = "${var.name}"
  }
}
