output "Up" {
  value = "Finish!"
}

output "balance01_ip" {
  value = vsphere_virtual_machine.balance01.clone[0].customize[0].network_interface[0].ipv4_address
}

output "front01_ip" {
  value = vsphere_virtual_machine.front01.clone[0].customize[0].network_interface[0].ipv4_address
}

output "front02_ip" {
  value = vsphere_virtual_machine.front02.clone[0].customize[0].network_interface[0].ipv4_address
}

output "back01_ip" {
  value = vsphere_virtual_machine.back01.clone[0].customize[0].network_interface[0].ipv4_address
}
