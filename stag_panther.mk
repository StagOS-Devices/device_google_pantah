#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/stag/main.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/panther/device-lineage.mk

TARGET_FACE_UNLOCK_SUPPORTED := false

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := stag_panther

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ2A.230505.002 9891397 release-keys"

BUILD_FINGERPRINT := google/panther/panther:13/TQ2A.230505.002/9891397:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
