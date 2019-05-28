//
// EC2 - main.tf
//
resource "aws_instance" "pgbouncer_node" {
  ami                         = "${var.instance-ami}"
  instance_type               = "${var.instance-type}"
  key_name                    = "${var.instance_key_name}"
  associate_public_ip_address = "${var.instance-associate-public-ip}"
  vpc_security_group_ids      = ["${var.vpc_sg}"]
  subnet_id                   = "${var.subnet_id}"

  tags = {
    Name = "pgbouncer_node"
  }

  provisioner "remote-exec" {
    inline = ["echo 'Hello World'"]

    connection {
      type        = "ssh"
      user        = "${var.ssh_user}"
      private_key = "${file("${var.private_key_path}")}"
    }
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i inventory aws.yml"
  }
}
