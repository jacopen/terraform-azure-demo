module "network" {
  source = "../modules/terraform-azure-instance"
  resource_group_name = data.terraform_remote_state.base.outputs.resource_group_name
  subnet_id = data.terraform_remote_state.base.outputs.vnet_subnet_id
  prefix = "jacopen"
}
