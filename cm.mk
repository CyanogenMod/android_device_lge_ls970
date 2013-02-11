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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := geehrc_sp

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc_sp/geehrc_sp.mk)
$(call inherit-product-if-exists, vendor/lge/geehrc_sp/geehrc-vendor.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

PRODUCT_DEVICE := geehrc_sp
PRODUCT_NAME := cm_geehrc_sp
PRODUCT_BRAND := LG
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cm_geehrc_sp BUILD_FINGERPRINT=google/cm_geehrc_sp/geehrc_sp:4.2.1/JOP40D/533553:user/release-keys PRIVATE_BUILD_DESC="cm_geehrc_sp user 4.2.1 JOP40D 533553 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
