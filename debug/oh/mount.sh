#!/bin/sh
disk=/dev/sd$1
echo "mount boot($disk"1") /mnt/boot"
mount $disk"1" /mnt/boot
echo "mount system($disk"2") /mnt/system"
mount $disk"2" /mnt/system
echo "mount system done"
echo "mount vendor($disk"3") /mnt/vendor"
mount $disk"3" /mnt/vendor
echo "mount vendor done"
echo "mount data($disk"4") /mnt/data"
mount $disk"4" /mnt/data
echo "mount vendor done"
