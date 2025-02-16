#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Dalvik/ART
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Inherit from common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j7lte-common/j7lte-common-vendor.mk)

LOCAL_PATH := device/samsung/j7lte-common

# Common overlay
DEVICE_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk
