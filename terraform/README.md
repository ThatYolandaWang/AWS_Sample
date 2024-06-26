# Guidance of creating ec2.

## Install terraform plugin, unzip and add to the path environment
https://developer.hashicorp.com/terraform/install

use cmd to validate the configuration
```
terraform -version
```

## Install AWS CLI for windows if want to control from local PC.
https://awscli.amazonaws.com/AWSCLIV2.msi

use cmd to validate the configuration
```
aws --version
```
## Change the variables in variable.tf
replace the ones which marked as '@must change'

## Go to the path of terraform script in cmd

init the path
```
terraform init
```

validate the configurations
```
terraform valiate
```

check the plan of the script
```
terraform plan
```

run the script
```
terraform apply
```
