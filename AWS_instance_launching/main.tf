provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAWNYNRB4QPXGST3MD"
    secret_key = "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"
}

#Create a new Virtual Private Cloud
resource "aws_vpc" "nonprod-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "nonprod-vpc"
    }
}

#Create an internet gateway
resource "aws_internet_gateway" "nonprod-gateway" {
    vpc_id = aws_vpc.nonprod-vpc.id
}