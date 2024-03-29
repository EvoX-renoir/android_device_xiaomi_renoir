#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from renoir device
$(call inherit-product, device/xiaomi/renoir/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Call the AOSP Dialer setup
$(call inherit-product, vendor/Dialer/Dialer.mk)

# Viper
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := renoir
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K9G
PRODUCT_NAME := evolution_renoir

EVO_SIGNED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_GAPPS_ARCH := arm64
TARGET_USES_MINI_GAPPS := true

PRODUCT_SYSTEM_NAME := renoir_global
PRODUCT_SYSTEM_DEVICE := renoir

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="renoir_global-user 13 TKQ1.220829.002 V14.0.6.0.TKIMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/renoir_global/renoir:13/TKQ1.220829.002/V14.0.6.0.TKIMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
