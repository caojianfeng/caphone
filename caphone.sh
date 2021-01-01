#! /bin/sh
if [ ! -n "$1" ] ;then
    png_file="screencap_zcoding.png"
else
    png_file=$1
fi

adb shell /system/bin/screencap -p /sdcard/screencap_zcoding.png
adb pull /sdcard/screencap_zcoding.png $png_file
adb shell rm /sdcard/screencap_zcoding.png
