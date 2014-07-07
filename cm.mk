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
# Release name
PRODUCT_RELEASE_NAME := D1 Quad XL

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOTANIMATION := vertical_720_1280
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit CM Themes
$(call inherit-product, vendor/cm/config/themes_common.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u9510e/u9510e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u9510e
PRODUCT_NAME := cm_u9510e
PRODUCT_BRAND := huawei
PRODUCT_MODEL := U9510E
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_MODEL} \
BUILD_NUMBER=${DATE} \
BUILD_FINGERPRINT=${PRODUCT_BRAND}_${PRODUCT_DEVICE}/${PRODUCT_MANUFACTURER}_${PRODUCT_MODEL}/${PRODUCT_NAME}_${PRODUCT_CODENAME}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${PRODUCT_MODEL} ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
PRODUCT_BRAND=${PRODUCT_BRAND} \
BUILD_UTC_DATE= ${UTC_DATE}\
PRODUCT_DEFAULT_LANGUAGE=en \
PRODUCT_DEFAULT_REGION=ID \



