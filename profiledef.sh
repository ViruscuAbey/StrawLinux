#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="strawlinux"
iso_label="STRAW_$(date +%Y%m)"
iso_publisher="StrawLinux <https://strawlinux.org>"
iso_application="StrawLinux Live/Installation CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/passwd"]="0:0:644"
  ["/etc/group"]="0:0:644"
  ["/etc/sudoers.d/99-strawlinux"]="0:0:440"
  ["/root"]="0:0:750"

  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/installation-guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
