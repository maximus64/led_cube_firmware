#!/bin/sh

set -u
set -e

BOARD_DIR="$(dirname $0)"

# mount /nvram
mkdir -p ${TARGET_DIR}/nvram
if [ -e ${TARGET_DIR}/etc/fstab ]; then
    grep -qE '^/dev/mmcblk0p3' ${TARGET_DIR}/etc/fstab || \
    echo "/dev/mmcblk0p3		/nvram		vfat	rw,noatime,discard	0	0" >> ${TARGET_DIR}/etc/fstab
fi
# change root mount options
sed -i "s/\/dev\/root.*/\/dev\/root       \/               ext4    rw,noauto,noatime,discard       0       1/g" ${TARGET_DIR}/etc/fstab

install -m 0644 -D ${BOARD_DIR}/config.txt ${BINARIES_DIR}/rpi-firmware/config.txt
install -m 0644 -D ${BOARD_DIR}/cmdline.txt ${BINARIES_DIR}/rpi-firmware/cmdline.txt
install -m 0644 -D ${BINARIES_DIR}/bcm2711-rpi-4-b-led-cube.dtb ${BINARIES_DIR}/bcm2711-rpi-4-b.dtb
