variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4dcgPOQsxEhCBnz3VcKVAjc4dLp1hH+naw2kt1mOTFJP8RbSggJgb7Yl7vcAvaUxObFSFiFmuI07O0b7dEx0QEaoS4rKuVQuq96gAmsAow7R3tRbsHY/yu0jXbt819VH3K5htHJA/NSte+w5Xat+rjxh10MtA39COEEeWIafht1y06gAs9iy14Yqq/MLA1i48PID5yJ9DYYRnD9AaVI6y29sj5lYSSF2aSpgc7yiMxRPSueFk5kWlZPhnDfUmnoj5MPaETlC5mFBPZaimHgJKBoRuWM+WAeJChP2y77DQ8IpzL2+9ChGNvhSwvf4S/pr5z6HsRRUFq2J9kkQAi+/HEmnh60a5n87SMDgbTH0VHjKSjONKqw/5XwMwQwKxOgbl1PLntjhVGlIEjnNzl3x8hXhgc1pHD8itXxmvJk3FIIiUzCyN8GtHkK9d7V+zvlxZrCJrVHsZE1RN2UwLHfDlmojgAwWSEcoH5J9SpZz9YQETGyeO/kdiXwR6lKLq1K0= plach@DESKTOP-3BS01QPS"
  description = "ssh-keygen -t ed25519"
}
###WM_web

variable "vm_web_yandex_compute_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM Image name"
}

variable "vm_web_yandex_compute_instance" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "VM Instance"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM Platform ID"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "VM Cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "VM Memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "VM core fraction"
}

### WM_db

variable "vm_db_yandex_compute_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM Image name"
}

variable "vm_db_yandex_compute_instance" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "VM Instance"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM Platform ID"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "VM Cores"
}

variable "vm_db_memory" {
  type        = number
  default     = 1
  description = "VM Memory"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 5
  description = "VM core fraction"
}