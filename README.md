# IAC-with-Terraform

Terraform is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision infrastructure using a simple, human-readable language called HashiCorp Configuration Language (HCL), and to manage popular service providers as well as custom in-house solutions.

To run Terraform, you will first need to install it on your system. This can typically be done by downloading the appropriate binary for your system from the Terraform (https://developer.hashicorp.com/terraform/downloads), and then adding it to your system's PATH.

Once Terraform is installed, you can run it by executing the "terraform" command in your command line interface (CLI).

Here are the basic commands you can use to run Terraform:

Initialize Terraform: Before you can start using Terraform, you need to initialize it by running `terraform init` command in the directory where you have your terraform files. This command downloads the necessary provider plugins and sets up the backend for storing the state.

Plan the changes: Before applying the changes, use `terraform plan` to see what changes Terraform will make to your infrastructure. It creates an execution plan.

Apply the changes: Use `terraform apply` command to apply the changes. It creates or modifies the resources as per the plan.

Destroy the resources: Use `terraform destroy` command to destroy the resources that were created using Terraform.

You can also use `terraform show` to view the current state of the resources and terraform state command to manage the state.

Note that before running the apply command, you need to have a valid Terraform file which defines the infrastructure you want to create or modify.
