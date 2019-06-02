# terraform-ansible

Steps to use after you have cloned the repo.

```
Fill in the values in the variables.tf file with your VPC,SG,SUBNET and pem key created and stored in AWS under your profile.

If you are using a private ip rename the ec2.ini-private-ips in the inventory dir to ec2.ini. If using public_ips then rename ec2.ini-public_ips to ec2.ini


terraform init
terraform fmt
terraform validate 

If you have no errors, warnings or issue at this point you can now run

terraform plan
terraform apply
```
