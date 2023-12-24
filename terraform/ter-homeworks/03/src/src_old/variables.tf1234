###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

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
