#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 15032385536

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/audi

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5CFBL1

# Camera
TARGET_CAMERA_SERVICE_EXT_LIB := //$(DEVICE_PATH):libcameraservice_extension.audi

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_AUDI_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/audi/BoardConfigVendor.mk
