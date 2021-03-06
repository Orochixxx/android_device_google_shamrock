#
# Copyright 2016 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from shamrock device
$(call inherit-product, device/google/shamrock/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := google
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamrock
PRODUCT_NAME := cm_shamrock
PRODUCT_MANUFACTURER := General Mobile
#PRODUCT_MODEL := GM 5 Plus
TARGET_VENDOR := google

PRODUCT_GMS_CLIENTID_BASE := android-google

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamrock \
    BUILD_FINGERPRINT=qcom/shamrock/shamrock:6.0.1/M3E26/3094945:user/release-keys \
    PRIVATE_BUILD_DESC="shamrock-user 6.0.1 M3E26 3094945 release-keys"
endif
