resource "yandex_compute_instance" "fe_instance" {

depends_on = [ yandex_compute_instance.web ]

  for_each = { for vm in local.vms_fe: "${vm.vm_name}" => vm }
  name = each.key
  platform_id = "standard-v1"
  resources {
 	cores     	= each.value.cpu
 	memory    	= each.value.ram
 	core_fraction = each.value.frac
  }

  boot_disk {
	initialize_params {
  	image_id = "fd84ocs2qmrnto64cl6m"
	}
  }

  network_interface {
	subnet_id = yandex_vpc_subnet.develop.id
	nat   	= true
  }

  metadata = {
#	ssh-keys = "ubuntu:${file("C:\Users\plach\.ssh\id_rsa.pub")}"
	ssh-keys = local.ssh
  }
}

locals {
  vms_fe = [
	{
   	vm_name = "main"
   	cpu 	= 4
   	ram 	= 1
   	frac	= 20
	},
	{
   	vm_name = "replica"
   	cpu 	= 2
   	ram 	= 1
   	frac	= 25
	}
  ]
}

locals {
  ssh = "ubuntu:${file("C:\Users\plach\.ssh\id_rsa.pub")}"
}