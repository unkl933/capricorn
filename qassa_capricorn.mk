#
# Copyright (C) 2017-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from capricorn device
$(call inherit-product, device/xiaomi/capricorn/device.mk)

# Inherit some common Qassa stuff.
$(call inherit-product, vendor/qassa/config/common_full_phone.mk)

# Resolution Animation Boot
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := qassa_capricorn
PRODUCT_DEVICE := capricorn
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5s
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="capricorn" \
    PRIVATE_BUILD_DESC="capricorn-user 8.0.0 OPR1.170623.032 V10.2.2.0.OAAMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/marlin/marlin:8.0.0/OPR1.170623.032/4397478:user/release-keys"
