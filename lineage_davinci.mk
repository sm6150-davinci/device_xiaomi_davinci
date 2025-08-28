#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

#Axion
AXION_MAINTAINER := Rumais
AXION_PROCESSOR := Snapdragon_730
AXION_CAMERA_REAR_INFO := 48,16,8
AXION_CAMERA_FRONT_INFO := 20
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true

#Axion CPU Tuning
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES := 6,7
AXION_CPU_DISPLAY := 3-7
AXION_CPU_FG := 0-7



PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="davinci-user 11 RKQ1.200826.002 V12.1.4.0.RFJMIXM release-keys" \
    BuildFingerprint=Xiaomi/davinci/davinci:11/RKQ1.200826.002/V12.1.4.0.RFJMIXM:user/release-keys \
    DeviceProduct=davinci \
    SystemName=davinci

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
