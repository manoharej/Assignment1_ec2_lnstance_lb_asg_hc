# Creating Security Group for ELB
resource "aws_instance" "demoec2" {
    ami= "ami-0e1d30f2c40c4c701"
    instance_type = "t2.micro"
    key_name = "Desktop_Practice"
    subnet_id = aws_subnet.demosubnet.id
    security_groups = [aws_security_group.demosg.id]
    tags = {
      "Name" = "Load_auto"
    }
}
