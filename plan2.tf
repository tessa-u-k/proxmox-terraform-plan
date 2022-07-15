resource "proxmox_vm_qemu" "ubtunk3s" {

count = 1
name = "ubuserverk3s-0${count.index + 1}"
target_node = "pve"
desc = "server"
vmid = "50${count.index + 1}"


onboot = true

clone = "cloudinitubupdated"
agent = 1


cores = 4
sockets = 1
memory = 4096



network {
	bridge = "vmbr0"
	model = "virtio"
}




os_type = "cloud-init"
ipconfig0 = "ip=10.0.0.13${count.index + 1}/24,gw=10.0.0.1"
}
