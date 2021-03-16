output "id" {
  description = "the ami id, from the ami which is created within the account and the current region"
  value       = aws_ami_copy.ami.id
}
