output "public_ip" {
    value1 = try(aws_instance.webserver1.public_ip, "")
  }

output "public_ip" {
    value2 = try(aws_instance.webserver2.public_ip, "")
  }