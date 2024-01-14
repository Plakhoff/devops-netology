resource "yandex_compute_disk" "stor" {
  count   = 3
  name	= "disk-${count.index + 1}"
  size	= 1
}


resource "yandex_compute_instance" "storage" {
  name = "storage"
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
	ssh-keys = "ubuntu:ubuntu:AAAAB3NzaC1yc2EAAAADAQABAAABgQC4dcgPOQsxEhCBnz3VcKVAjc4dLp1hH+naw2kt1mOTFJP8RbSggJgb7Yl7vcAvaUxObFSFiFmuI07O0b7dEx0QEaoS4rKuVQuq96gAmsAow7R3tRbsHY/yu0jXbt819VH3K5htHJA/NSte+w5Xat+rjxh10MtA39COEEeWIafht1y06gAs9iy14Yqq/MLA1i48PID5yJ9DYYRnD9AaVI6y29sj5lYSSF2aSpgc7yiMxRPSueFk5kWlZPhnDfUmnoj5MPaETlC5mFBPZaimHgJKBoRuWM+WAeJChP2y77DQ8IpzL2+9ChGNvhSwvf4S/pr5z6HsRRUFq2J9kkQAi+/HEmnh60a5n87SMDgbTH0VHjKSjONKqw/5XwMwQwKxOgbl1PLntjhVGlIEjnNzl3x8hXhgc1pHD8itXxmvJk3FIIiUzCyN8GtHkK9d7V+zvlxZrCJrVHsZE1RN2UwLHfDlmojgAwWSEcoH5J9SpZz9YQETGyeO/kdiXwR6lKLq1K0= plach@DESKTOP-3BS01QPS}"
  }
}