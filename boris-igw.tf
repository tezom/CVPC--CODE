

# Creating An Internet Gateway

resource "aws_internet_gateway" "Boris-igw" {
    vpc_id = aws_vpc.Boris-vpc.id
  
    tags = {
    Name = "Boris-igw"
  }
}