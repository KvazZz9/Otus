data "vault_generic_secret" "my_secret" {
  path = "kv_ans/vsphere"
}

data "vsphere_datacenter" "dc" {
  name = "Datacenter"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "Hayas"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = "LNV_array_1_ssd_01"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "117_DMZ_dms"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = "Ubuntu22.04_Template_noVLM_v21"
  datacenter_id = data.vsphere_datacenter.dc.id
}
