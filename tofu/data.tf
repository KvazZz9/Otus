data "vault_generic_secret" "my_secret" {
  path = "kv_ans/vsphere"
}

data "vsphere_datacenter" "dc" {
  name = "Datacenter"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "Hayas_AMD"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = "ST05_lvm1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "117_DMZ_dms"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = "Ubuntu22.04_AMD_180725_v20"
  datacenter_id = data.vsphere_datacenter.dc.id
}
