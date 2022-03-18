
module "linuxservers" {
  source              = "Azure/compute/azurerm"
  resource_group_name = data.azurerm_resource_group.main.name
  vm_os_simple        = "UbuntuServer"
  public_ip_dns       = ["aztftest"]
  vnet_subnet_id      = data.terraform_remote_state.base.outputs.vnet_subnet_id
  vm_size             = "Standard_B1ls"
  remote_port         = "22"
  ssh_key             = ""
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}
