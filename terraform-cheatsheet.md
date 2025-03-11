# Terraform Syntax Cheatsheet

## Terraform Basics
- Check Terraform version:
  ```sh
  terraform version
  ```
- Initialize a new or existing Terraform configuration:
  ```sh
  terraform init
  ```
- Format Terraform code:
  ```sh
  terraform fmt
  ```
- Validate configuration files:
  ```sh
  terraform validate
  ```
- Show available Terraform commands:
  ```sh
  terraform --help
  ```

## Working with Terraform Configuration
- Define a provider:
  ```hcl
  provider "aws" {
    region = "us-west-2"
  }
  ```
- Define a resource:
  ```hcl
  resource "aws_instance" "example" {
    ami           = "ami-12345678"
    instance_type = "t2.micro"
  }
  ```
- Define a variable:
  ```hcl
  variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t2.micro"
  }
  ```
- Use a variable:
  ```hcl
  resource "aws_instance" "example" {
    ami           = "ami-12345678"
    instance_type = var.instance_type
  }
  ```
- Define an output:
  ```hcl
  output "instance_ip" {
    value = aws_instance.example.public_ip
  }
  ```

## Managing Terraform State
- Show the current state:
  ```sh
  terraform show
  ```
- Refresh state to match real infrastructure:
  ```sh
  terraform refresh
  ```
- Save the state to a file:
  ```sh
  terraform state pull > state.tfstate
  ```
- Manually remove a resource from the state:
  ```sh
  terraform state rm <resource_name>
  ```

## Planning and Applying Changes
- Preview infrastructure changes:
  ```sh
  terraform plan
  ```
- Apply changes to infrastructure:
  ```sh
  terraform apply
  ```
- Apply changes with auto-approval:
  ```sh
  terraform apply -auto-approve
  ```
- Destroy all managed infrastructure:
  ```sh
  terraform destroy
  ```
- Destroy with auto-approval:
  ```sh
  terraform destroy -auto-approve
  ```

## Working with Modules
- Define a module:
  ```hcl
  module "network" {
    source = "./modules/network"
  }
  ```
- Use a remote module:
  ```hcl
  module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "3.0"
  }
  ```

## Working with Workspaces
- List all workspaces:
  ```sh
  terraform workspace list
  ```
- Create a new workspace:
  ```sh
  terraform workspace new <workspace_name>
  ```
- Select a workspace:
  ```sh
  terraform workspace select <workspace_name>
  ```

## Debugging and Logging
- Enable detailed logs:
  ```sh
  export TF_LOG=DEBUG
  ```
- Save logs to a file:
  ```sh
  export TF_LOG_PATH=terraform.log
  ```

## Terraform Backend Configuration (Remote State)
- Define an S3 backend:
  ```hcl
  terraform {
    backend "s3" {
      bucket = "my-terraform-state"
      key    = "state.tfstate"
      region = "us-west-2"
    }
  }
  ```

