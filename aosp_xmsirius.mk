#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Elixir stuff
ELIXIR_BUILD_TYPE := OFFICIAL

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true

# Inherit from grus device
$(call inherit-product, device/xiaomi/xmsirius/device.mk)

PRODUCT_NAME := aosp_xmsirius
PRODUCT_DEVICE := xmsirius
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sirius-user 10 QKQ1.190828.002 V12.5.1.0.QEBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/sirius/sirius:10/QKQ1.190828.002/V12.5.1.0.QEBCNXM:user/release-keys
