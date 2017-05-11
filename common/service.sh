#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
sleep 30
resetprop -n ro.HOME_APP_ADJ 1
resetprop -n logcat.live disable
resetprop -n ro.ril.power_collapse 1
resetprop -n pm.sleep_mode 1
resetprop -n ro.ril.enable.amr.wideband 1
resetprop -n wifi.supplicant_scan_interval 300
resetprop -n persist.telephony.support.ipv6 0
resetprop -n persist.telephony.support.ipv4 1
resetprop -n ro.telephony.call_ring.delay 0
resetprop -n ring.delay 0
resetprop -n ro.lge.proximity.delay 25
resetprop -n mot.proximity.delay 0
resetprop -n windowsmgr.max_events_per_sec 150
resetprop -n ro.config.hw_fast_dormancy 1
resetprop -n persist.sys.NV_FPSLIMIT 60
resetprop -n persist.adb.notify 0
resetprop -n persist.audio.handset.mic digital
resetprop -n audio.deep_buffer.media false
resetprop -n audio.offload.pcm.24bit.enable true
resetprop -n audio.offload.multiple.enabled true
resetprop -n use.voice.path.for.pcm.voip true
resetprop -n tunnel.decode false
resetprop -n tunnel.audiovideo.decode false
resetprop -n ro.audio.samplerate 48000
resetprop -n ro.audio.pcm.samplerate 48000
resetprop -n ro.lenovo.soundeffect dolby
resetprop -n ro.mtk_dolby_dap_support 1
resetprop -n persist.htc.audio.pcm.bitsize 24
resetprop -n persist.htc.audio.pcm.channels 8
resetprop -n htc.audio.alt.enable 0
resetprop -n htc.audio.hac.enable 0
resetprop -n htc.audio.enable_dmic 1
sleep 1
chmod 666 /sys/module/snd_soc_wcd9330/parameters/high_perf_mode
echo 1 > /sys/module/snd_soc_wcd9330/parameters/high_perf_mode

sleep 10
