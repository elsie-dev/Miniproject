output "ec2_instance_ips" {
  value = [for instance in aws_instance.ec2_instance : instance.public_ip]
}