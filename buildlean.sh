#!/bin/sh

make -j4

cp arch/arm/boot/zImage zip/kernel
cp drivers/net/wireless/bcm4325/wireless.ko zip/system/lib/modules/

zipfile="franco.Kernel-3.zip"
echo "making zip file"
cd zip
rm -f *.zip
zip -r $zipfile *
