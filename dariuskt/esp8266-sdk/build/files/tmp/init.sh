#!/bin/bash

set -e

cd /home/user
mkdir -p /home/user/bin


echo -e "\n\n## Clone SDK\n\n"
git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
cd esp-open-sdk
make || true
make || true
cd -
ln -s /home/user/esp-open-sdk/xtensa-lx106-elf/bin/esptool.py /home/user/bin/
ln -s /home/user/esp-open-sdk/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc /home/user/bin/
ln -s /home/user/esp-open-sdk/xtensa-lx106-elf/bin/xtensa-lx106-elf-readelf /home/user/bin/


wget -q -O esptool.tgz https://github.com/igrr/esptool-ck/releases/download/0.4.8/esptool-0.4.8-linux64.tar.gz
tar xzf esptool.tgz
mv esptool*/esptool bin/
rm -r esptool*/






