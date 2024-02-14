resource "yandex_compute_instance" "fe_instance" {

depends_on = [ yandex_compute_instance.web ]

  for_each = { for vm in var.for_each_vms: vm.name => vm }
  name = each.value.name
  platform_id = var.platform_id
  resources {
 	cores     	= each.value.cpu
 	memory    	= each.value.ram
 	core_fraction = each.value.frac
  }

  boot_disk {
	initialize_params {
  	image_id = var.image_id
	}
  }

  network_interface {
	subnet_id = yandex_vpc_subnet.develop.id
	nat   	= var.nat_value_fe
  }

  metadata = {
	ssh-keys = var.ssh-key
  }
}
