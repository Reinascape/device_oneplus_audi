#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from audi device
$(call inherit-product, device/oneplus/audi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_audi
PRODUCT_DEVICE := audi
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJF110

# EvolutionX stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
WITH_GMS := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1763362248205 release-keys" \
    BuildFingerprint=OnePlus/PJF110/OP5CFBL1:16/UKQ1.231108.001/U.23f7937-2f2dd9-2fb722:user/release-keys \
    DeviceName=OP5CFBL1 \
    DeviceProduct=PJF110 \
    SystemDevice=OP5CFBL1 \
    SystemName=PJF110
