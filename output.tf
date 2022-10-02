output "public_ip" {
    value = try(aws_instance.webserver1.public_ip, "")
  }

output "public_ip" {
    value = try(aws_instance.webserver2.public_ip, "")
  }