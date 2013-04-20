#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL geehrc devices, and
# are also specific to geehrc devices
#
# Everything in this directory will become public

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/lge/gee/gee-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/geehrc4g_spr_us/overlay

## common overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/gee-common/overlay-cdma

# Inherit from gee-common
$(call inherit-product, device/lge/gee-common/gee-common.mk)

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# QC RIL path for rild
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        rild.libargs=-d /dev/smd0

# Telephony Properties
PRODUCT_PROPERTY_OVERRIDES += \
        ro.telephony.ril_class=LGEQualcommCDMARIL \
        ro.cdma.home.operator.numeric=310120 \
        ro.cdma.home.operator.alpha=Sprint \
        telephony.lteOnCdmaDevice=1 \
        telephony.lte.cdma.device=1 \
        ro.telephony.default_network=8 \
        ro.ril.def.preferred.network=8 \
        ril.subscription.types=NV,RUIM \
        ro.cdma.subscribe_on_ruim_ready=true \
        persist.radio.no_wait_for_card=1 \
        keyguard.no_require_sim=true \
        ro.config.svlte1x=true \
        telephony.sms.pseudo_multipart=1 \
        DEVICE_PROVISIONED=1

    
# PRODUCT_CHARACTERISTICS := nosdcard  

# GPS configuration
PRODUCT_COPY_FILES += \
        device/lge/geehrc4g_spr_us/configs/gps.conf:system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/geehrc4g_spr_us/ramdisk/init.geehrc4g_spr_us.rc:root/init.geehrc4g_spr_us.rc \
    device/lge/geehrc4g_spr_us/ramdisk/ueventd.geehrc4g_spr_us.rc:root/ueventd.geehrc4g_spr_us.rc \
    device/lge/geehrc4g_spr_us/ramdisk/fstab.gee:root/fstab.gee

# NFC Firmware
PRODUCT_COPY_FILES += \
    device/lge/geehrc4g_spr_us/prebuilt/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# CameraHAL
PRODUCT_PACKAGES += \
   camera.geehrc4g_spr_us
                   

