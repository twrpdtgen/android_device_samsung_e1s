#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from e1s device
$(call inherit-product, device/samsung/e1s/device.mk)

PRODUCT_DEVICE := e1s
PRODUCT_NAME := twrp_e1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S921B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="e1sxxx-user 14 UP1A.231005.007 S921BXXU3AXH7 release-keys"

BUILD_FINGERPRINT := samsung/e1sxxx/e1s:14/UP1A.231005.007/S921BXXU3AXH7:user/release-keys
