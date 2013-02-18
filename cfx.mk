## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CFX stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc4g_spr_us/device.mk)
$(call inherit-product-if-exists, vendor/lge/geehrc_sp/geehrc-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc4g_spr_us
PRODUCT_NAME := cfx_geehrc4g_spr_us
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
