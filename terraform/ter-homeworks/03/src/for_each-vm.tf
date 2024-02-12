resource "yandex_compute_instance" "fe_instance" {

depends_on = [ yandex_compute_instance.web ]

  for_each = { for vm in var.for_each_vms: vm.name => vm }
  name = each.value.name
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
	ssh-keys = var.ssh-key
  }
}
