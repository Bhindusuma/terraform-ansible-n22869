module "networking" {
  source              = "./modules/networking"
  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix
  tags                = var.tags
}

module "compute" {
  source                  = "./modules/compute"
  resource_group_name     = var.resource_group_name
  location                = var.location
  prefix                  = var.prefix
  admin_username          = var.admin_username
  admin_password          = var.admin_password
  subnet_ids              = module.networking.subnet_ids
  nsg_id                  = module.networking.nsg_id
  backend_address_pool_id = module.loadbalancer.backend_address_pool_id
  tags                    = var.tags
}

module "loadbalancer" {
  source              = "./modules/loadbalancer"
  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix
  tags                = var.tags
}

resource "null_resource" "ansible_provisioner" {
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ../ansible/inventory.ini ../ansible/n01722869-playbook.yml"
  }

  depends_on = [
    module.compute,
    module.networking,
    module.loadbalancer
  ]
}
resource "null_resource" "ansible_playbook" {
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ../ansible/inventory ../ansible/n01722869-playbook.yml"
  }

  depends_on = [
    module.compute,
    module.networking
  ]
}
resource "null_resource" "validation_marker" {
  provisioner "local-exec" {
    command = "echo 'Post-deployment validation for student n01722869 complete.'"
  }

  triggers = {
    always_run = "${timestamp()}"
  }

  depends_on = [
    null_resource.ansible_provisioner,
    null_resource.ansible_playbook
  ]
}
