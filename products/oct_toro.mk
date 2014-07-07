# Copyright (C) 2014 OctOS
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

# Check for target product
ifeq (oct_toro,$(TARGET_PRODUCT))

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/oct/config/common.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Override AOSP build properties
# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := toro
PRODUCT_NAME := oct_toro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=mysid \
BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" \
PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys"
endif
