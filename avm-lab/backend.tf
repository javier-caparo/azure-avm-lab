terraform {
    backend "azurerm" {
        resource_group_name  = "rg-terraform-shared"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
        storage_account_name = "jcterraformoidc74"    # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
        container_name       = "tfstate"              # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
        key                  = "dev.avmlab.tfstate"
        # resource group, storage account and containre for tfstate are managed as secrets
    }
}