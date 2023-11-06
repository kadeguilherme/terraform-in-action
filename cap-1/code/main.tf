provider "aws" { # Declarando o AWS provider
    region = "us-east-1"
}

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Esse valor é ImageLocation da Image
    }

    owners = ["099720109477"] # OwnerId
}

resource "aws_instance" "helloworld" {
    ami           = data.aws_ami.ubuntu.id 
    instance_type = "t2.micro"
    tags = {
        Name = "HelloWorld"
    }
}