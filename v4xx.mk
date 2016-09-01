#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/v4xx-common/v4xx-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# System properties
-include $(LOCAL_PATH)/system_prop.mk
PRODUCT_CHARACTERISTICS := tablet

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

# Audio
PRODUCT_COPY_FILES += \
    device/lge/v4xx-common/configs/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8226

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth
PRODUCT_PACKAGES += \
    init.zetaw.bt_vendor.rc \
    bdAddrLoader

# BoringSSL compatability wrapper
PRODUCT_PACKAGES += \
    libboringssl-compat

# Camera
PRODUCT_PACKAGES += \
    Snap \
    camera.msm8226

# Display
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    liboverlay

# Gello
PRODUCT_PACKAGES += \
    Gello

# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/idc/touch_dev.idc:system/usr/idc/touch_dev.idc

# Keystore
#PRODUCT_PACKAGES += \
#    keystore.msm8226

# Lights
PRODUCT_PACKAGES += \
    lights.msm8226

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
# TODO
#PRODUCT_PACKAGES += \
#    com.android.nfc_extras \
#    NfcNci \
#    nfc_nci.pn54x.default \
#    Tag
#
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
#    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
#    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Offmode Charging
PRODUCT_PACKAGES += \
    charger_res_images

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8226

# Qualcomm
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.e7 \
    init.e7.rc \
    init.lge.rc \
    init.zetaw.bt_vendor.rc \
    init.zetaw.class_core.sh \
    init.zetaw-sensor.sh \
    init.zetaw.rc \
    init.zetaw.sh \
    init.zetaw.syspart_fixup.sh \
    init.zetaw.usb.rc \
    init.zetaw.usb.sh \
    ueventd.e7.rc

# RIL symbols
PRODUCT_PACKAGES += \
    liblge

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_default.conf \
    libwcnss_qmi \
    libwpa_client \
    wcnss_service \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/lge/v4xx-common/wcnss/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/v4xx-common/wcnss/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/v4xx-common/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/lge/v4xx-common/wcnss/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/v4xx-common/wcnss/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf
