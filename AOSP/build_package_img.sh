#! /bin/bash
  
BOARD_WIFI_VENDOR=realtek

export COLOR_VENDOR_TYPE=$1

if [ -z "$COLOR_VENDOR_TYPE" ] ; then
 COLOR_VENDOR_TYPE=NORMAL
fi

echo "vendor: "$COLOR_VENDOR_TYPE 

echo "--------------make uboot--------------"
cd u-boot
#make clean
./make.sh rk3328
cd ..

echo "--------------make kernel--------------"


cd kernel
#make clean
make ARCH=arm64 rk3328-evb-android-avb.img -j8
cd ..

echo "-----------setupenv.sh---------------"
. ./setupenv.sh
. ./copy_priv-app.sh

make installclean
make -j12

./mkimage.sh
cd rockdev/
./mkupdate.sh
cd ..

update_img_name=update.img
image_name=$(date "+%Y_%m_%d_%H_%M_")
machine_name=$(uname -a | awk  '{print $2;}')
target_image_name=${machine_name}.${image_name}${update_img_name}

ROCKDEV_PATH=./rockdev
UPDATE_PACKAGE_TARGET_PATH="/home/itachi/sharesource/A2K/image"


# mount.cifs //192.168.1.134/itachi -o rw,dir_mode=0777,file_mode=0777 /home/itachi/sharesource

sudo mkdir -p $UPDATE_PACKAGE_TARGET_PATH/$COLOR_VENDOR_TYPE

echo "----------------copy update.img to $UPDATE_PACKAGE_TARGET_PATH-------------------"
echo "color" | sudo cp -v $ROCKDEV_PATH/update.img $UPDATE_PACKAGE_TARGET_PATH/$COLOR_VENDOR_TYPE/$target_image_name

echo "--------ok--------success--------"
sync
~       