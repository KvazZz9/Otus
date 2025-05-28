resource "vsphere_virtual_machine" "front01" {
  name             = "front01"
  firmware         = "efi"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  folder           = "TEST/D.U."

  num_cpus = 2
  memory   = 2048
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = 16
    eagerly_scrub    = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options {
        host_name = "front01"
        domain    = "dc"
      }

      dns_server_list = ["192.168.3.4", "192.168.3.3"]

      network_interface {
        ipv4_address = "192.168.117.210"
        ipv4_netmask = 24
      }

      ipv4_gateway = "192.168.117.1"
    }
  }
}

resource "vsphere_virtual_machine" "front02" {
  name             = "front02"
  firmware         = "efi"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  folder           = "TEST/D.U."

  num_cpus = 2
  memory   = 2048
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = 16
    eagerly_scrub    = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options {
        host_name = "front02"
        domain    = "dc"
      }

      dns_server_list = ["192.168.3.4", "192.168.3.3"]

      network_interface {
        ipv4_address = "192.168.117.211"
        ipv4_netmask = 24
      }

      ipv4_gateway = "192.168.117.1"
    }
  }
}
