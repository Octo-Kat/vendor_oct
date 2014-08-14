# Copyright 2014 OctOS
# Licensed under The Great Dubbstatorship of 2014
# No rights reserved

# Check for target product
ifeq (oct_lt02ltespr,$(TARGET_PRODUCT))

# Inherit AOSP configuration for lt02ltespr.
$(call inherit-product, $(SRC_TARGET_DIR)/samsung/full_lt02ltespr.mk)

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/oct/config/cdma.mk)
$(call inherit-product, vendor/oct/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := oct_lt02ltespr
PRODUCT_DEVICE := lt02ltespr
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T217S
endif