#! /bin/sh
if [ ! -n "$1" ] ;then
    out_file="screencap_zcoding.png"
else
    out_file=$1
fi

if [ ! -n "$1" ] ;then
    time=120
else
    time=$2
fi

if [ "${out_file##*.}"x = "mp4"x ];then
    adb shell /system/bin/screenrecord /sdcard/ovo_screenrecord.mp4 --time-limit $time
    adb pull /sdcard/ovo_screenrecord.mp4 $out_file
    adb shell rm /sdcard/ovo_screenrecord.mp4
    # echo "TODO: ffmpeg -r 15 -i in.mp4 -s 270x600 out.gif"
    echo "TODO: togif in.mp4 out.gif"
else
    adb shell /system/bin/screencap -p /sdcard/ovo_screencap.png
    adb pull /sdcard/ovo_screencap.png $out_file
    adb shell rm /sdcard/ovo_screencap.png
fi



