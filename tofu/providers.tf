terraform {
  required_providers {

      vsphere = {
      source  = "registry.terraform.io/hashicorp/vsphere"
      version = "2.11.1"
                }
       vault = {
      source  = "registry.terraform.io/hashicorp/vault"
      version = "3.24.0"
               }
                    }

           }

provider "vault" {
  skip_child_token = true
  address          = "***:8200"
  token            = var.VAULT_TOKEN
}

provider "vsphere" {
  user              = data.vault_generic_secret.my_secret.data.vsphere_user
  password          = data.vault_generic_secret.my_secret.data.vsphere_password
  vsphere_server    = "vcenter.hayas.ru"
  allow_unverified_ssl = true
}
