resource "proxmox_vm_qemu" "WHAT" {

count = 1
name = "ubuserverport"
target_node = "pve"
desc = "server"
vmid = "506"


onboot = true

clone = "cloudinitubupdated"
agent = 1


cores = 10
sockets = 1
memory = 8192



network {
	bridge = "vmbr0"
	model = "virtio"
}




os_type = "cloud-init"
ipconfig0 = "ip=<ip> ,  gw=<gateway>"
}
