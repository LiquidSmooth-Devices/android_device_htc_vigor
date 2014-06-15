#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS := device/htc/vigor/overlay

# The gps config appropriate for this device
PRODUCT_COPY_FILES := device/htc/vigor/gps/gps.conf:system/etc/gps.conf

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.vigor.rc \
    choice_fn \
    detect_key \
    offmode_charging \
    power_test

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.vigor \
    init.vigor.rc \
    init.vigor.usb.rc \
    ueventd.vigor.rc \
    remount.vigor

# Hostapd
PRODUCT_COPY_FILES += \
    device/htc/vigor/prebuilt/bin/hostapd:system/bin/hostapd \
    device/htc/vigor/prebuilt/bin/hostapd_cli:system/bin/hostapd_cli

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Audio/Video codecs
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/msm8660-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# HTC BT Audio tune
PRODUCT_COPY_FILES += device/htc/vigor/dsp/AudioBTID.csv:system/etc/AudioBTID.csv

# Misc
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    gps.vigor \
    lights.vigor \
    Stk \
    FileManager

## cm dsp manager
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp

# Sound DSP
PRODUCT_COPY_FILES += \
    device/htc/vigor/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/vigor/dsp/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    device/htc/vigor/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/vigor/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/vigor/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/vigor/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

# Sound Image DSP
PRODUCT_COPY_FILES += \
    device/htc/vigor/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/vigor/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/vigor/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/vigor/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/vigor/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/vigor/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/vigor/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/vigor/keychars/vigor-keypad.kcm.bin:system/usr/keychars/vigor-keypad.kcm.bin \
    device/htc/vigor/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/vigor/keylayout/vigor-keypad.kl:system/usr/keylayout/vigor-keypad.kl \
    device/htc/vigor/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/vigor/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/htc/vigor/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/vigor/prebuilt/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# Graphics
PRODUCT_COPY_FILES += device/htc/vigor/configs/adreno_config.txt:system/etc/adreno_config.txt

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/vigor/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/htc/vigor/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=wlan0 \

BOARD_WLAN_DEVICE_REV := bcm4330_b2
WIFI_BAND := 802_11_ABG

# Bluetooth firmware
$(call inherit-product, device/htc/msm8660-common/bcm_hcd.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US

# Inherit configs
$(call inherit-product-if-exists, vendor/htc/vigor/vigor-vendor.mk)
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
