terraform {
  cloud {
    hostname = "nlb-tfepoc-01-8e78469c7df03e24.elb.ap-southeast-1.amazonaws.com"
    organization = "Power-Terra"

    workspaces {
      name = "tfe-17Jan"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExampleInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
