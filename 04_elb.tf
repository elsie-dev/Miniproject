resource "aws_lb" "my_lb" {
  name               = "my-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.my_security_group.id]
  subnets            = [aws_subnet.my_subnet.id]
}
# Attach instances to the ELB
resource "aws_lb_target_group_attachment" "ec2_instance_attachment" {
  count             = 3
  target_group_arn = aws_lb.my_lb.target_group_arn
  target_id        = aws_instance.ec2_instance[count.index].id
}

# Output the ELB DNS name
output "elb_dns_name" {
  value = aws_lb.my_lb.dns_name
}