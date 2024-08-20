# DXC Terraform Course

## Pre-requisites
- **[Install git](https://git-scm.com/downloads)**
- **[Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)**
- **[Install Azure CLI](https://learn.microsoft.com/es-es/cli/azure/install-azure-cli)**

Clone the repository to start with the labs.
```
git clone https://github.com/sergioaten/demo-terraform
cd demo-terraform
```

## Labs
- [Azure](#azure)
- [AWS](#aws)
- [Import](#import)

## Azure
1. Go to the repository directory `demo-terraform` and then go to the azure lab directory
```bash
cd azure
```
2. Authenticate with `Azure CLI`
```bash
az login
```
3. Set the proper subscription where you have permissions and you want to deploy the resources
```bash
az account set --s <subscription_id|subscription_name>
```
4. Initialize the terraform configuration
```bash
terraform init
```
5. Modify the `terraform.tfvars` file with the proper values as needed
6. Plan the deployment
```bash
terraform plan
```
7. Apply the deployment, this command will prompt you to confirm the deployment, type `yes` to confirm
```bash
terraform apply
```
8. Check the resources created in the `Azure portal`
> [!WARNING]
> Note: Don't destroy the resources yet, we will use them in the **`Import`** lab
## AWS
1. Go to the repository directory `demo-terraform` and then go to the aws lab directory
```bash
cd aws
```
2. Authenticate to AWS with `environment variables`
    - `Bash`
    ```bash
    export AWS_ACCESS_KEY_ID=<access_key>
    export AWS_SECRET_ACCESS_KEY=<secret_key>
    ```
    - `Powershell`
    ```powershell
    $env:AWS_ACCESS_KEY_ID="<access_key>"
    $env:AWS_SECRET_ACCESS_KEY="<secret_key>"
    ```
3. Initialize the terraform configuration
```bash
terraform init
```
4. Modify the `terraform.tfvars` file with the proper values as needed
5. Plan the deployment
```bash
terraform plan
```
6. Apply the deployment, this command will prompt you to confirm the deployment, type `yes` to confirm
```bash
terraform apply
```
7. Check the resources created in the 'AWS console'
8. Destroy the resources, this command will prompt you to confirm the deployment, type `yes` to confirm
```bash
terraform destroy
```
## Import
1. Go to the repository directory `demo-terraform` and then go to the azure lab directory
```bash
cd azure
```
&emsp;In the `Azure` lab we created some resources, now the state file has the information of the resources created, we need delete the resources from the State file to import them again
2. List the resources in the state file
```bash
terraform state list
```

&emsp;&emsp;The output will be something like this:
```bash
azurerm_network_interface.demo
azurerm_resource_group.demo
azurerm_subnet.demo
azurerm_virtual_network.demo
azurerm_windows_virtual_machine.demo
```
3. Remove the resources from the state file
```bash
terraform state rm azurerm_network_interface.demo
terraform state rm azurerm_resource_group.demo
terraform state rm azurerm_subnet.demo
terraform state rm azurerm_virtual_network.demo
terraform state rm azurerm_windows_virtual_machine.demo
```
4. Check the resources are not in the state file
```bash
terraform state list
```
5. Import the resources, take the resource id from the Azure portal and replace `<resource_id>` with the proper value from each resource:
&emsp;Example: `terraform import azurerm_resource_group.demo /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/demo-rg`
```bash
terraform import azurerm_resource_group.demo <resource_id>
terraform import azurerm_virtual_network.demo <resource_id>
terraform import azurerm_subnet.demo <resource_id>
terraform import azurerm_network_interface.demo <resource_id>
terraform import azurerm_windows_virtual_machine.demo <resource_id>
```
6. Check the resources are imported correctly
```	bash
terraform plan
```
Should return `No changes. Infrastructure is up-to-date.`
7. Destroy the resources, this command will prompt you to confirm the deployment, type `yes` to confirm
```bash
terraform destroy
```
