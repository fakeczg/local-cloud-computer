#!/usr/bin/env fish
set disk /dev/sd$argv[1]

sudo dd if=system.img of=$disk"2" bs=1M status=progress
echo "dd system.img to $disk"2" ok!"
sudo dd if=vendor.img of=$disk"3" bs=1M status=progress
echo "dd vendor to /dev/$disk"3" ok!"
#sudo dd if=userdata.img of=$disk"4" bs=1M status=progress
#echo "dd userdata to $disk"4" ok!"
