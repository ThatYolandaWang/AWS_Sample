variable "access_key"{
    type                = string
    default             = #"access_key" # @must change
}

variable "secret_key"{
    type                = string
    default             = #"secret_key" # @must change
}

variable "region"{
    type                = string
    default             = "eu-west-1"# @must change
}

variable "available_zone"{
    type                = string
    default             = "eu-west-1a"# @must change
}

variable "site_name" {
    type                  = string
    default               = "testserver" # will be used as tag name
}

variable "keypairs" { 
    type                  = string
    default               = "testkey"# .pem key pairs for remote desktop, create and download from AWS, # @must change
}

variable "instance" {
    type                = string
    default             = "t2.micro"#"c5.4xlarge"
}

variable "ami" {
    type                = string
    default             = "ami-08ba52a61087f1bd6"#"ami-02382e87d4b00704b" # windows server 2019
}

variable "vpc" {
    type                  = string
    default               = "vpc-097ddc72887d0a6fe" #change to exist sys vpc id @must change
}

variable "subnet"{
    type                  = string
    default               = "subnet-0b5d8a031113f8412" #change to exist sys subnet id @must change
}

variable "sg"{
    type                  = string
    default               = "sg-0b673cd2d4da6ff47" #change to exist sys sg id @must change
}


variable "ebs_volume_size"{
    type                  = number
    default               = 8#800
}
