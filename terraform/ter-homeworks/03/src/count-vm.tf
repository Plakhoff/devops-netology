resource "yandex_compute_instance" "web" {
  count = 2
  name = "develop-web-${count.index + 1}"
  resources {
	cores     	= 2
	memory    	= 1
	core_fraction = 5
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
	ssh-keys = "ubuntu:${file("C:\Users\plach\.ssh\id_rsa.pub")}"
  }
}