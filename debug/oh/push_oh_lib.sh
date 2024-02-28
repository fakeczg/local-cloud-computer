echo "start push"
echo "push system lib"
sudo cp out/d2000/packages/phone/system/lib64/* /mnt/system/system/lib64/ -R -a
echo "push system lib end"
echo "push vendor lib"
sudo cp out/d2000/packages/phone/vendor/lib64/* /mnt/vendor/lib64/ -R -a
echo "push vendor lib end"
echo "push fovt app"
sudo cp out/d2000/graphic/graphic_standard/atomic_test /mnt/data/ -R -a
echo "push fovt app end"
echo "push modetest app"
sudo cp out/d2000/graphic/graphic_standard/modetest /mnt/data/  -a
echo "push modetest app end"
