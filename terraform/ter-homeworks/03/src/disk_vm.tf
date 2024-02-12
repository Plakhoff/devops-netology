resource "yandex_compute_disk" "stor" {
  count   = var.stor_res_count
  name	= "disk-${count.index + 1}"
  size	= var.stor_res_size
}


resource "yandex_compute_instance" "storage" {
  name = "storage"
  resources {
	cores     	= var.stor_res_cpu
	memory    	= var.stor_res_ram
	core_fraction = var.stor_res_frac
  }

  boot_disk {
	initialize_params {
  	image_id = var.image_id
	}
  }

  dynamic "secondary_disk" {
   for_each = "${yandex_compute_disk.stor.*.id}"
   content {
 	disk_id = yandex_compute_disk.stor["${secondary_disk.key}"].id
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