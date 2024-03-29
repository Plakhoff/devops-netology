resource "yandex_compute_instance" "web" {
  count = var.web_res_count
  name = "develop-web-${count.index + 1}"
  resources {
	cores     	= var.web_res_cpu
	memory    	= var.web_res_ram
	core_fraction = var.web_res_frac
  }

  boot_disk {
	initialize_params {
  	image_id = var.image_id
	}
  }

  network_interface {
	subnet_id = yandex_vpc_subnet.develop.id
	nat   	= var.nat_value_web
	security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = {
	ssh-keys = var.ssh-key
  }
}