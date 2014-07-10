LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
#
#ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
#
# include the non-open-source counterpart to this file
-include vendor/huawei/u9510e/AndroidBoardVendor.mk
$(call inherit-product-if-exists, vendor/huawei/u9510e/u9510e-vendor.mk)
