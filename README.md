Provisioning box containing Terraform & Ansible AMI built with Packer
=============

## Requirements

Install [Packer](https://www.packer.io/) and add it to your PATH.

At the end of this process you will have a new AMI with Packer, Terraform and Ansible installed.

## Usage

```
packer build \
  -var 'aws_access_key=your_key' \
  -var 'aws_secret_key=your_secret' \
  ta.json
```

Or

```
packer build -var-file='packer_vars.json' ta.json
```

Extra variables exposed:

* aws_region (defaults to `ap-southeast-2`)
* aws_instance_type (defaults to `t2.small`)
* ami_name_prefix (defaults to `terraform-ansible`)
* packer_version (defaults to `0.8.0`)
* terraform_version (defaults to `0.5.3`)
* vpc_id (defaults to ``)
* subnet_id (defaults to ``)

###Troubleshooting

* Make sure you have set the AWS region and the correct source AMI (Ubuntu 14.x recommended) for that region
