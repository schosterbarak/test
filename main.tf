provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_security_group_rule" "my-rule" {
  type        = "ingress"
  cidr_blocks = ["172.10.10.10/32"]
  from_port = 22
  protocol = "tcp"
  security_group_id = "sg-1231456"
  to_port = 22
}
