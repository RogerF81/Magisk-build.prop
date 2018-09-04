#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
echo "af.fast_track_multiplier=4" >> /vendor/build.prop
echo "vendor.audio.dolby.ds2.hardbypass=false" >> /vendor/build.prop
echo "vendor.audio.offload.multiple.enabled=false" >> /vendor/build.prop
echo "vendor.audio.offload.passthrough=false" >> /vendor/build.prop
echo "ro.sys.fw.bg_apps_limit=72" >> /vendor/build.prop
echo "ro.vendor.qti.sys.fw.bg_apps_limit=72" >> /vendor/build.prop
