

# Creating A Public Subnet

resource "aws_subnet" "Boris-public-sn" {
    vpc_id = aws_vpc.Boris-vpc.id
    cidr_block = "60.0.1.0/24"
    availability_zone = "us-east-2a"
    map_public_ip_on_launch = true
  
    tags = {
    Name = "Boris-public-sn"
  }
}
# Creating A Private Subnet
resource "aws_subnet" "Boris-private-sn" {
    vpc_id = aws_vpc.Boris-vpc.id
    cidr_block = "60.0.2.0/24"
    availability_zone = "us-east-2c"
  
  tags = {
    Name = "Boris-private-sn"
  }
}