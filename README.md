# IAC-with-Terraform

Terraform is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision infrastructure using a simple, human-readable language called HashiCorp Configuration Language (HCL), and to manage popular service providers as well as custom in-house solutions.

To run Terraform, you will first need to install it on your system. This can typically be done by downloading the appropriate binary for your system from the Terraform website (https://developer.hashicorp.com/terraform/downloads), and then adding it to your system's PATH.

Once Terraform is installed, you can run it by executing the "terraform" command in your command line interface (CLI).

1. terraform init
The terraform init command is used to initialize a new or existing Terraform working directory. It downloads and installs the required providers and modules as specified in your configuration files.

  'terraform init'

2. terraform fmt
The terraform fmt command is used to format your Terraform configuration files in a standardized way. It ensures that your files are properly indented and have consistent spacing.

  'terraform fmt'

3. terraform plan
The terraform plan command is used to create an execution plan. It shows you what changes Terraform will make to your infrastructure. It's a dry run of the terraform apply command.

  'terraform plan'

4. terraform validate
The terraform validate command is used to validate the syntax of the Terraform configuration files. It checks whether the configuration files are properly formatted and whether they adhere to the provider's requirements.

'terraform validate'

5. terraform apply
The terraform apply command is used to apply the changes to your infrastructure. It creates, modifies, or deletes resources as needed to match your desired state.

  'terraform apply'

6. terraform destroy
The terraform destroy command is used to destroy the resources that Terraform manages. It will delete all the resources that were created by the terraform apply command.

  'terraform destroy'

7. terraform state
The terraform state command is used to manage the Terraform state file. It allows you to inspect, modify, and remove resources from the state file.

  'terraform state list
   terraform state show <resource_name>'

8. terraform output
The terraform output command is used to print the values of the output variables defined in the Terraform configuration files. This can be useful to inspect the output of a terraform apply command.

  'terraform output <output_variable_name>'

9. terraform import
The terraform import command is used to import existing resources into the Terraform state file. It allows you to manage existing resources that were not created by Terraform.

  'terraform import <resource_type>.<resource_name> <resource_id>'

10. terraform providers
The terraform providers command is used to list the installed providers and their versions. It also allows you to install or upgrade a provider.

  'terraform providers
   terraform init -upgrade'


