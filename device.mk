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
$(call inherit-product-if-exists, vendor/lge/geehrc_sp/geehrc_sp-vendor.mk)

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
    
# PRODUCT_CHARACTERISTICS := nosdcard  

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/geehrc4g_spr_us/ramdisk/init.geehrc4g_spr_us.rc:root/init.geehrc4g_spr_us.rc \
    device/lge/geehrc4g_spr_us/ramdisk/ueventd.geehrc4g_spr_us.rc:root/ueventd.geehrc4g_spr_us.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

PRODUCT_PACKAGES += \
        camera.geehrc4g_spr_us
