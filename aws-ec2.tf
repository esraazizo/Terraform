resource "aws_instance" "public_instance" {
  ami           = "ami-0a606d8395a538502"
  instance_type = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.aws_sg.id]
  associate_public_ip_address = true

  user_data = <<EOF
   #!/bin/bash 
   yum update -y
   yum -y install httpd
   systemctl start httpd
   systemctl enable httpd
   echo "<h1>Hello From $(hostname -f)<h1>" > /var/www/html/index.html

   EOF

  tags = {
    "Name" : "Kanye"
  }
}