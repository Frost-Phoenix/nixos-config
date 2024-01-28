#!/usr/bin/env zsh

# VM name
vm_name="win11"
export LIBVIRT_DEFAULT_URI="qemu:///system"

# change workspace
hyprctl dispatch workspace 5

virsh start ${vm_name}
virt-viewer -f -w -a ${vm_name}