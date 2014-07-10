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
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit CM Themes
$(call inherit-product, vendor/cm/config/themes_common.mk)

# Inherit device configuration
#$(call inherit-product, device/huawei/u9510e/u9510e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_u9510e
PRODUCT_DEVICE := u9510e


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u9510e BUILD_FINGERPRINT=huawei/u9510e:user/release-keys"
PRIVATE_BUILD_DESC="u9510e-user 4.3.1 test-keys"

