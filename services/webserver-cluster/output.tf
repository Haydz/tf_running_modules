output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "The domain name of the load balancer"
}



output "database_information" {
  value = data.terraform_remote_state.db.outputs
}

output "alb_security_group_id" {
  value = aws_security_group.alb.id
  description = "The Id of the security group attached to the load balancer"
}