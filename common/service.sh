#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
sleep 30
resetprop -n ro.sys.fw.bg_apps_limit 72
resetprop -n sys.display-size 2560x1440
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
resetprop -n ro.qc.sdk.audio.fluencetype none
resetprop -n persist.audio.fluence.voicerec true
resetprop -n persist.audio.fluence.speaker false
resetprop -n use.voice.path.for.pcm.voip true
resetprop -n audio.deep_buffer.media false
resetprop -n audio.offload.pcm.24bit.enable true
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
resetprop -n tunnel.audio.encode false
resetprop -n audio.pp.asphere.enabled false
resetprop -n audio.safx.pbe.enabled true
resetprop -n persist.dev.pm.dyn_samplingrate 1
resetprop -n lpa.decode false
resetprop -n lpa.use-stagefright false
resetprop -n lpa.releaselock false
resetprop -n AUDIODRIVER alsa
resetprop -n ro.sound.driver alsa
resetprop -n ro.sound.alsa snd_pcm
resetprop -n ro.enforce.driver.priority alsa
resetprop -n defaults.pcm.rate_converter speexrate_best
resetprop -n alsa.mixer.defaultGain 6
resetprop -n alsa.mixer.capture.master Mic
resetprop -n alsa.mixer.playback.earpiece Earpiece
resetprop -n alsa.mixer.capture.earpiece Mic
resetprop -n alsa.mixer.playback.headset Headset
resetprop -n alsa.mixer.capture.headset Mic
resetprop -n alsa.mixer.playback.speaker Speaker
resetprop -n alsa.mixer.capture.speaker Mic
resetprop -n alsa.mixer.playback.bt.sco BTHeadset
resetprop -n alsa.mixer.capture.bt.sco BTHeadset
resetprop -n alsa.use.usb.audioin true
resetprop -n alsa.mixer.playback.master DAC1
resetprop -n persist.htc.audio.pcm.bitsize 24
resetprop -n persist.htc.audio.pcm.channels 8
resetprop -n htc.audio.global.state 1
resetprop -n htc.audio.24bit.recording 1
resetprop -n htc.audio.accessibility 1
resetprop -n htc.audio.beats.support2v 1
resetprop -n htc.audio.effectendpoint 8
resetprop -n htc.audio.hdaudio.videoplayback 1
resetprop -n htc.audio.hw_standby 1
resetprop -n htc.audio.q6.topology 0
resetprop -n ro.arkamys.enable true
resetprop -n ro.arkamys.default.effect 11
resetprop -n audio_hal.period_size 384
resetprop -n ro.config.hw_dts_settings true
resetprop -n DTS_EAGLE_PLATFORM_SUPPORT 1
resetprop -n audio_capability hpx_support
resetprop -n hw_extend_audioflinger 1
resetprop -n mpq.audio.decode true
resetprop -n pcm.channels 8
resetprop -n persist.audio.hifi.int_codec true
resetprop -n persist.audio.hifi true
resetprop -n persist.audio.hifi.volume 1
resetprop -n persist.audio.native.44.1kHz true
resetprop -n persist.audio.native.48kHz true
resetprop -n persist.audio.native.96kHz true
resetprop -n persist.audio.native.192kHz true
resetprop -n audio.offload.pcm.enable false
resetprop -n audio.offload.buffer.size.kb 240
resetprop -n audio.offload.disable 0
resetprop -n audio.offload.pcm.16bit.enable true
resetprop -n audio.offload.gapless.enabled false
resetprop -n audio.offload.multiple.enabled false
resetprop -n audio.offload.track.enable false
resetprop -n persist.audio.hp true
resetprop -n persist.audio.hifi_dac ON
resetprop -n persist.audio.fluence.voicecall true
resetprop -n persist.audio.lowlatency.rec true
resetprop -n use.dts_eagle true
resetprop -n hpx_send_params 1
resetprop -n ro.config.hw_dts true
resetprop -n ro.config.hpx_support true
resetprop -n ro.dirac.max_active.powersound 3
resetprop -n ro.dirac.max_active.headset 5
resetprop -n ro.dirac.poolsize 6
resetprop -n ro.dirac.config 2
resetprop -n persist.audio.dirac.speaker true
sleep 1
chmod 664 /sys/module/snd_soc_wcd9330/parameters/high_perf_mode
echo 1 > /sys/module/snd_soc_wcd9330/parameters/high_perf_mode

sleep 10