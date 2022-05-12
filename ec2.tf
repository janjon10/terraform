provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.nano"
    key_name = "key1"
    tags = {
        name = "janjon"
        Env = "dev"
    }
}

output "public_ip" {
    value = aws_instance.terraform-demo.public_ip
}
output "public_dns" {
    value = aws_instance.terraform-demo.public_dns
}