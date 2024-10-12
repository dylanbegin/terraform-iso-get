# Terraform image builder.
# Pulled from Image factory: https://factory.talos.dev/

resource "proxmox_virtual_environment_download_file" "alma" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.alma.url
  file_name           = var.alma.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "alpine" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.alpine.url
  file_name           = var.alpine.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "centos" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.centos.url
  file_name           = var.centos.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "debian" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.debian.url
  file_name           = var.debian.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "fedora" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.fedora.url
  file_name           = var.fedora.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "kali" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.kali.url
  file_name           = var.kali.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "mint" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.mint.url
  file_name           = var.mint.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "rocky" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.rocky.url
  file_name           = var.rocky.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}

resource "proxmox_virtual_environment_download_file" "ubuntu" {
  content_type        = var.common.type
  datastore_id        = var.common.datastore
  node_name           = var.common.node
  url                 = var.ubuntu.url
  file_name           = var.ubuntu.filename
  overwrite           = var.common.overwrite
  overwrite_unmanaged = var.common.overwrite-unmgd
}
