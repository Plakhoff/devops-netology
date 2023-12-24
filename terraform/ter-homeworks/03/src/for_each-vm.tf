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
   	ram 	= 2
   	frac	= 20
	},
	{
   	vm_name = "replica"
   	cpu 	= 2
   	ram 	= 4
   	frac	= 100
	}
  ]
}

locals {
  ssh = "ubuntu:AAAAB3NzaC1yc2EAAAADAQABAAABgQC4dcgPOQsxEhCBnz3VcKVAjc4dLp1hH+naw2kt1mOTFJP8RbSggJgb7Yl7vcAvaUxObFSFiFmuI07O0b7dEx0QEaoS4rKuVQuq96gAmsAow7R3tRbsHY/yu0jXbt819VH3K5htHJA/NSte+w5Xat+rjxh10MtA39COEEeWIafht1y06gAs9iy14Yqq/MLA1i48PID5yJ9DYYRnD9AaVI6y29sj5lYSSF2aSpgc7yiMxRPSueFk5kWlZPhnDfUmnoj5MPaETlC5mFBPZaimHgJKBoRuWM+WAeJChP2y77DQ8IpzL2+9ChGNvhSwvf4S/pr5z6HsRRUFq2J9kkQAi+/HEmnh60a5n87SMDgbTH0VHjKSjONKqw/5XwMwQwKxOgbl1PLntjhVGlIEjnNzl3x8hXhgc1pHD8itXxmvJk3FIIiUzCyN8GtHkK9d7V+zvlxZrCJrVHsZE1RN2UwLHfDlmojgAwWSEcoH5J9SpZz9YQETGyeO/kdiXwR6lKLq1K0= plach@DESKTOP-3BS01QPS}"
}