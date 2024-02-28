#!/bin/sh
disk=/dev/sd$1
echo "umount boot($disk"1") /mnt/system"
umount /mnt/boot
echo "umount system($disk"2") /mnt/system"
umount /mnt/system
echo "umount system done"
echo "umount vendor($disk"3") /mnt/vendor"
umount /mnt/vendor
echo "umount vendor done"
echo "umount data($disk"4") /mnt/data"
umount /mnt/data
echo "umount vendor done"
