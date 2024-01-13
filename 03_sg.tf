# Create a security group for the instances
resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  # Define your security group rules here if needed
}