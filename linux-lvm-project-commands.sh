export PS1="12311900:\w\$"

sudo dd if=/dev/zero of=/disk1.img bs=1M count=1024
sudo dd if=/dev/zero of=/disk2.img bs=1M count=3072
sudo dd if=/dev/zero of=/disk3.img bs=1M count=4096

sudo losetup --find --show /disk1.img
sudo losetup --find --show /disk2.img
sudo losetup --find --show /disk3.img

sudo pvcreate /dev/loop14 /dev/loop15 /dev/loop16

sudo vgcreate projectvg /dev/loop14 /dev/loop15 /dev/loop16

sudo lvcreate -L 5G -n projectlv projectvg

sudo mkfs.ext4 /dev/projectvg/projectlv

sudo mkdir /mnt/projectdata
sudo mount /dev/projectvg/projectlv /mnt/projectdata

sudo blkid /dev/projectvg/projectlv

sudo nano /etc/fstab
# UUID=cd629d99-6ddd-4d94-bfca-28f7b84dc9cfcd /mnt/projectdata ext4 defaults 0 0

sudo useradd priyanshuuser
sudo setfacl -m u:priyanshuuser:rwx /mnt/projectdata
sudo setfacl -m o::0 /mnt/projectdata
getfacl /mnt/projectdata

sudo lvextend -L +2G /dev/projectvg/projectlv
sudo resize2fs /dev/projectvg/projectlv
