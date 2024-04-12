

# Associating the route table to the public subnet
resource "aws_route_table_association" "Boris-public-rta" {
  subnet_id = aws_subnet.Boris-public-sn.id
  route_table_id = aws_route_table.Boris-public-rt.id
}

# Associating the route table to the private subnet
resource "aws_route_table_association" "Boris-rta" {
  subnet_id = aws_subnet.Boris-private-sn.id
  route_table_id = aws_route_table.Boris-private-rt.id
  
}