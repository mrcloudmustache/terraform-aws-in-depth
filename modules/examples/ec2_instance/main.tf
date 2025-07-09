module "my_instance" {
    source = "../../ec2_instance"
    
    subnet_id = data.aws_subnets.default.ids[0]
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"
}