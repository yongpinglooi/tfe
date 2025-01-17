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
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
