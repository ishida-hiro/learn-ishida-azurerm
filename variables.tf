variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  description = "vnet名称"
  type        = string
  default     = "vnet-handson-demo"
}

variable "vnet_address_space" {
  description = "vnetアドレススペース"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "subnet名称"
  type        = string
  default     = "subnet-handson-demo"
}

variable "subnet_address_prefix" {
  description = "subnetアドレスプレフィックス"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "storage_account_prefix" {
  description = "storage account名称のプレフィックス（グローバルでユニークである必要があります）"
  type        = string
  default     = "sthandsondemo"
}

variable "vm_name" {
  description = "仮想マシン名（EC2相当）"
  type        = string
  default     = "vm-handson-demo"
}

variable "vm_size" {
  description = "VMサイズ（EC2のinstance typeに相当）。B1sは最小・低コストクラス"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "VMの管理者ユーザー名"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH公開鍵（~/.ssh/id_rsa.pub の中身。パスワード認証は使わずSSH鍵推奨）"
  type        = string
}

