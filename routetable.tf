

# Creating Route Tables For the Public Subnet


resource "aws_route_table" "Boris-public-rt" {
    vpc_id = aws_vpc.Boris-vpc.id
    
    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.Boris-igw.id
    }
  
  tags = {
    Name = "Boris-public-rt"
  }
}


# Creating A Route Table For the Private Subnet

resource "aws_route_table" "Boris-private-rt" {
    vpc_id = aws_vpc.Boris-vpc.id
  
  tags = {
    Name = "Boris-private-rt"
  }
}