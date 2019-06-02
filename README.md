# terraform-ansible

Steps to use after you have cloned the repo.

```
Fill in the values in the variables.tf file with your VPC,SG,SUBNET and pem key created and stored in AWS under your profile.


- terraform init
- terraform fmt
- terraform validate 

If you have no errors, warnings or issue at this point you can now run

- terraform plan
- terraform apply
```
