
#provisioning a vpc

resource "aws_vpc" "Boris-vpc" {
  cidr_block       = "60.0.0.0/16"
  instance_tenancy = "default"
  
  tags = {
    Name = "Boris-vpc"
  }
}