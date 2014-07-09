#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/huawei/u9510e/u9510e-vendor.mk)


PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/huawei/u9510e
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


# Binary Kernerl Build uncomment below, rename zImage to kernel put on $(LOCAL_PATH)
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif
#
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

# config files 
# rild
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilts/etc/ril_xgold_radio.cfg:system/etc/ril_xgold_radio.cfg \
# media
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/system/etc/k3_omx.cfg:system/etc/k3_omx.cfg \
$(LOCAL_PATH)/system/etc/k3_extractor.cfg:system/etc/k3_extractor.cfg \
$(LOCAL_PATH)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
$(LOCAL_PATH)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
$(LOCAL_PATH)/system/etc/event-log-tags:system/etc/event-log-tags \

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/system/etc/fir_filter/fir_coef_capture.txt:system/etc/fir_filter/fir_coef_capture.txt \
	$(LOCAL_PATH)/system/etc/fir_filter/fir_coef_speaker.txt:system/etc/fir_filter/fir_coef_speaker.txt \
	$(LOCAL_PATH)/system/etc/es305_cs.bin:system/etc/es305_cs.bin \
	$(LOCAL_PATH)/system/etc/es305_es.bin:system/etc/es305_es.bin \
$(LOCAL_PATH)/system/etc/es305_uart.bin:system/etc/es305_uart.bin \
	$(LOCAL_PATH)/system/etc/asound_CADL.dat:system/etc/asound_CADL.dat \
    $(LOCAL_PATH)/system/etc/asound_ce_CADL.dat:system/etc/asound_ce_CADL.dat \
    $(LOCAL_PATH)/system/etc/asound_ce_CNDLR.dat:system/etc/asound_ce_CNDLR.dat \
	$(LOCAL_PATH)/system/etc/asound_chn_EADL.dat:system/etc/asound_chn_EADL.dat \
    $(LOCAL_PATH)/system/etc/asound_EADL.dat:system/etc/asound_EADL.dat \
    $(LOCAL_PATH)/system/etc/volume_fm_CADL.dat:system/etc/volume_fm_CADL.dat \
$(LOCAL_PATH)/system/etc/volume_incall_CADL.dat:system/etc/volume_incall_CADL.dat \
$(LOCAL_PATH)/system/etc/volume_fm_EADL.dat:system/etc/volume_fm_EADL.dat \
$(LOCAL_PATH)/system/etc/volume_incall_EADL.dat:system/etc/volume_incall_EADL.dat \
$(LOCAL_PATH)/system/etc/volume_incall_chn_CADL.dat:system/etc/volume_incall_chn_CADL.dat \
$(LOCAL_PATH)/system/etc/volume_incall_chn_EADL.dat:system/etc/volume_incall_chn_EADL.dat \
    $(LOCAL_PATH)/system/etc/audio_effects.conf:system/etc/audio_effects.conf 

	
# TouchScreen, Keyboard
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/system/usr/idc/hisik3_touchscreen.idc:system/usr/idc/hisik3_touchscreen.idc \
	$(LOCAL_PATH)/system/usr/idc/k3_keypad.idc:system/usr/idc/k3_keypad.idc \
    $(LOCAL_PATH)/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    $(LOCAL_PATH)/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    $(LOCAL_PATH)/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    $(LOCAL_PATH)/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
$(LOCAL_PATH)/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
$(LOCAL_PATH)/system/usr/keylayout/k3_keypad.kl:system/usr/keylayout/k3_keypad.kl \
$(LOCAL_PATH)/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl 

# config files for wifi, GPS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/system/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/system/etc/gpsconfig.xml:system/etc/gpsconfig.xml 

# Vold management
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/vold.fstab:system/etc/vold.fstab \
        $(LOCAL_PATH)/system/etc/external_sd.fstab:system/etc/external_sd.fstab \
        $(LOCAL_PATH)/system/etc/internal_sd.fstab:system/etc/internal_sd.fstab

# dhcpcd
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
$(LOCAL_PATH)/system/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
$(LOCAL_PATH)/system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
$(LOCAL_PATH)/system/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured

# bcm firmware
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/system/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
$(LOCAL_PATH)/system/vendor/firmware/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
$(LOCAL_PATH)/system/vendor/firmware/fw_bcmdhd_p2p.bin:system/vendor/firmware/fw_bcmdhd_p2p.bin \
$(LOCAL_PATH)/system/vendor/firmware/fw_bcmdhd_test.bin:system/vendor/firmware/fw_bcmdhd_test.bin \
$(LOCAL_PATH)/system/vendor/firmware/nvram.txt:system/vendor/firmware/nvram.txt

# bluetooth
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/system/etc/bluetooth/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd


# init@root
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init/init:root/init \
$(LOCAL_PATH)/init/init.rc:root/init.rc \
$(LOCAL_PATH)/init/init.huawei.rc:root/init.huawei.rc \
$(LOCAL_PATH)/init/ueventd.rc:root/ueventd.rc \
$(LOCAL_PATH)/init/ueventd.huawei.rc:root/ueventd.huawei.rc \
$(LOCAL_PATH)/init/init.k3v2oem1.usb.rc:root/init.k3v2oem1.usb.rc \

# Camera (leave it for next tweak)
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/device.config:system/etc/camera/davinci/device.config \
#	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/mt9m114_sunny/imgproc.xml:system/etc/camera/davinci/mt9m114_sunny/imgproc.xml \
#	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/default/imgproc.xml:system/etc/camera/davinci/default/imgproc.xml \
#	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/default/multiframe.xml:system/etc/camera/davinci/default/multiframe.xml \
#	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/imgproc.xml:system/etc/camera/davinci/ov8830/imgproc.xml \
#	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/multiframe.xml:system/etc/camera/davinci/ov8830/multiframe.xml \
#    	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/cm_correction.dat:system/etc/camera/davinci/ov8830/cm_correction.dat \
#    	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/cm_foliage.dat:system/etc/camera/davinci/ov8830/cm_foliage.dat \
#    	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/cm_normal.dat:system/etc/camera/davinci/ov8830/cm_normal.dat \
#    	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/cm_sky.dat:system/etc/camera/davinci/ov8830/cm_sky.dat \
#    	$(LOCAL_PATH)/prebuilts/etc/camera/davinci/ov8830/cm_sunset.dat:system/etc/camera/davinci/ov8830/cm_sunset.dat \
#	$(LOCAL_PATH)/prebuilts/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
#	$(LOCAL_PATH)/prebuilts/etc/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
#	$(LOCAL_PATH)/libskia_patch/libskia.so:system/lib/libskia.so
#

# product permissions
PRODUCT_COPY_FILES += \
       frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
       frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
       frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
       frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
       frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
       frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
       frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
       frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
       frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
       frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
       frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
       frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
       frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
       frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
       frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
       frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
       vendor/cm/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml \
vendor/cm/config/permissions/com.cyanogenmod.theme.xml:system/etc/permissions/com.cyanogenmod.theme.xml \
vendor/cm/config/permissions/com.cyanogenmod.nfc.enhanced.xml:system/etc/permissions/com.cyanogenmod.nfc.enhanced.xml

# Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init:recovery/root/init \
	$(LOCAL_PATH)/recovery/init.recovery.k3v2oem1.rc:root/init.recovery.k3v2oem1.rc \
	$(LOCAL_PATH)/init/fstab.k3v2oem1:root/fstab.k3v2oem1 \
	$(LOCAL_PATH)/init/ueventd.k3v2oem1.rc:root/ueventd.k3v2oem1.rc \
	$(LOCAL_PATH)/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh
#

# Sim toolkit
PRODUCT_PACKAGES += \
       Stk

# Live Wallpapers
PRODUCT_PACKAGES += \
       LiveWallpapers \
       LiveWallpapersPicker \
       VisualizationWallpapers \
       librs_jni
PRODUCT_PACKAGES += \
       Torch 


# Bluetooth & FmRadio
PRODUCT_PACKAGES += \
       uim-sysfs \
       libbt-vendor \
       bt_sco_app \
       BluetoothSCOApp \
       libtinyalsa

PRODUCT_PACKAGES += \
       setup_fs \
       libsrec_jni \
       com.android.future.usb.accessory \
       make_ext4fs 

# Lights
PRODUCT_PACKAGES += \
	lights.k3v2oem1
    
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils

# Misc
# This device have enough room for precise davick
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
       ro.ril.hsxpa=2 \
       wifi.interface=wlan0 \
       ap.interface=wlan1 \
       ro.vold.switchablepair=yes \
       persist.sys.usb.config=mtp,adb \
       ro.opengles.version=131072


PRODUCT_PROPERTY_OVERRIDES+= \
dalvik.vm.execution-mode=int:jit \
dalvik.vm.dexopt-flags=v=a,o=v,m=y,u=y \
dalvik.vm.checkjni=0 \
dalvik.vm.debug.alloc=0 \
dalvik.vm.dexopt-data-only=1 

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


