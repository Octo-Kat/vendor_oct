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
ifeq (oct_jflteatt,$(TARGET_PRODUCT))

# Include OctOS common configuration
include vendor/oct/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Override AOSP build properties
# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := oct_jflteatt
PRODUCT_DEVICE := jflteatt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I337
endif
