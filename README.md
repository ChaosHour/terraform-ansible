# terraform-ansible

Steps to use after you have cloned the repo.


Fill in the values in the `variables.tf` file with your VPC,SG,SUBNET 
and pem key created and stored in AWS under your profile.

If you are using a private ip rename the ec2.ini-private-ips in the inventory dir to ec2.ini. 

If using public_ips then rename ec2.ini-public_ips to ec2.ini

Make sure to look through the files like ansible.cfg and make changes 
were needed.

inventory/hosts file is good just fill in the pem key with yours.


```
terraform init
terraform fmt
terraform validate 

If you have no errors, warnings or issue at this point you can now run

terraform plan
terraform apply
```

Get your AWS private_ip from Ansible and Terraform:

```[terraform-ansible] ansible -u centos -i inventory pgbouncer_node  -m ping

pgbouncer_node | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}



Example usage To get private_ip:

ansible -i inventory 'ec2,!127.0.0.1' -l pgbouncer_node -m debug -a var="{{ 'ec2_tag_Name, ec2_private_ip_address' }}"


pgbouncer_node | SUCCESS => {
    "ec2_tag_Name, ec2_private_ip_address": "(u'pgbouncer_node', u'10.15.x.x')"
}


terraform show | grep -i ip
  associate_public_ip_address = false
  ipv6_address_count = 0
  ipv6_addresses.# = 0
  private_dns = ip-10-15-x-x.us-west-1.compute.internal
  private_ip = 10.15.x.x
  public_ip =

```