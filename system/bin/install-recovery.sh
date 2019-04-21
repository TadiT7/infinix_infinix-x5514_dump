#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:12194720:5744c169310fef794a094200760beead7f383dda; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:8434592:5a0c4ed48b39440157b42f1b0a450a7c6a5c07f7 EMMC:/dev/block/platform/bootdevice/by-name/recovery 5744c169310fef794a094200760beead7f383dda 12194720 5a0c4ed48b39440157b42f1b0a450a7c6a5c07f7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
