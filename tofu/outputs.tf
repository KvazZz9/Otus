output "Up" {
  value = "Finish!"
}

output "mysql1_ip" {
  value = vsphere_virtual_machine.mysql1.clone[0].customize[0].network_interface[0].ipv4_address
}

output "mysql2_ip" {
  value = vsphere_virtual_machine.mysql2.clone[0].customize[0].network_interface[0].ipv4_address
}

output "mysql3_ip" {
  value = vsphere_virtual_machine.mysql3.clone[0].customize[0].network_interface[0].ipv4_address
}

