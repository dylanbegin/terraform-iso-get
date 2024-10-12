# Terraform variables for kubernetes.

# Secret variables
variable "pve_host"{
  type      = string
  sensitive = true
}

variable "pve_api_token" {
  type      = string
  sensitive = true
}

variable "pve_ssh_user" {
  type      = string
  sensitive = true
}

variable "pve_ssh_pass" {
  type      = string
  sensitive = true
}

variable "sshuser" {
  type      = string
  sensitive = true
}

variable "sshpass" {
  type      = string
  sensitive = true
}

variable "sshkey" {
  type      = list(string)
  sensitive = true
}

# common variables used on all pulls
variable "common" {
  default = {
    type            = "iso"
    datastore       = "nomad"
    node            = "pve1"
    overwrite       = true
    overwrite-unmgd = true
  }
}

# Alma Linux
variable "alma" {
  default = {
    url           = "https://repo.almalinux.org/almalinux/9.4/isos/x86_64/AlmaLinux-9.4-x86_64-boot.iso"
    filename      = "alma.iso"
  }
}

# Alpine Linux
variable "alpine" {
  default = {
    url           = "https://dl-cdn.alpinelinux.org/alpine/v3.20/releases/x86_64/alpine-virt-3.20.3-x86_64.iso"
    filename      = "alpine.iso"
  }
}

# CentOS Streams
variable "centos" {
  default = {
    url           = "https://mirror.stream.centos.org/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-boot.iso"
    filename      = "centos.iso"
  }
}

# Debian Linux
variable "debian" {
  default = {
    url           = "https://cdimage.debian.org/mirror/cdimage/release/current/amd64/iso-cd/debian-12.7.0-amd64-netinst.iso"
    filename      = "debian.iso"
  }
}

# Fedora Server
variable "fedora" {
  default = {
    url           = "https://download.fedoraproject.org/pub/fedora/linux/releases/40/Server/x86_64/iso/Fedora-Server-netinst-x86_64-40-1.14.iso"
    filename      = "fedora.iso"
  }
}

# Kali Linux
variable "kali" {
  default = {
    url           = "https://cdimage.kali.org/kali-2024.3/kali-linux-2024.3-installer-netinst-amd64.iso"
    filename      = "kali.iso"
  }
}

# Mint Linux
variable "mint" {
  default = {
    url           = "https://mirrors.cicku.me/linuxmint/iso/stable/22/linuxmint-22-cinnamon-64bit.iso"
    filename      = "mint.iso"
  }
}

# Rocky Linux
variable "rocky" {
  default = {
    url           = "https://download.rockylinux.org/pub/rocky/9/isos/x86_64/Rocky-9.4-x86_64-boot.iso"
    filename      = "rocky.iso"
  }
}

# Ubuntu Server
variable "ubuntu" {
  default = {
    url           = "https://releases.ubuntu.com/24.04/ubuntu-24.04.1-live-server-amd64.iso"
    filename      = "ubuntu.iso"
  }
}
