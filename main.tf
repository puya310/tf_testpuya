provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_instance" {
    ami = "ami-05548f9cecf47b442"
    instance_type = "t2.micro"
    user_data = "sensitivekey"
    tags = {
        "Name" = "EC2_instance_TF_provisioned"
    }
}