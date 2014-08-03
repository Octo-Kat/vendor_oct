# Copyright (C) 2013 OctOS
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
ifeq (oct_serranoltespr,$(TARGET_PRODUCT))

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/oct/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/oct/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/serranoltespr/full_serranoltespr.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=serranoltespr TARGET_DEVICE=serranoltespr BUILD_FINGERPRINT="samsung/serranoltespr/serranoltespr:4.2.2/JDQ39/L520VPUAMK2:user/release-keys" PRIVATE_BUILD_DESC="serranoltespr-user 4.2.2 JDQ39 L520VPUAMK2 release-keys

PRODUCT_DEVICE := serranoltespr
PRODUCT_NAME := oct_serranoltespr
endif
