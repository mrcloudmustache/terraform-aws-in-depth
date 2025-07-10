resource "aws_instance" "hello_world" {
  count = var.instance_count

  ami           = var.ami
  subnet_id     = var.subnet_id
  instance_type = var.instance_type

  tags = merge(var.tags, {
    Name = "${var.name_prefix}-${count.index}"
  })

}