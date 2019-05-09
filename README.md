# Terraform Plan for Metricly AWS Integration
This is a Terraform plan for integrating an AWS account with Metricly.
For detailed information on this package, please refer to the [online documentation](https://help.netuitive.com/Content/Integrations/terraform.htm).

## Prerequisites
- Terraform ([install](https://learn.hashicorp.com/terraform/getting-started/install.html)) ([config](https://www.terraform.io/docs/providers/aws/))

## Setup
1. Clone the repository
2. Edit the variables in terraform.tfvars to include:
   - The **name of the S3 bucket** in which your detailed billing reports are generated
   - Your **external ID** (this can be found in the Metricly console under Integrations > AWS > Authentication)
3. Apply the Terraform plan
