# Copyright 2014 OctOS
# Licensed under The Great Dubbstatorship of 2014
# No rights reserved

# Check for target product
ifeq (oct_p4wifi,$(TARGET_PRODUCT))

# Inherit AOSP configuration for p4wifi.
$(call inherit-product, device/samsung/p4wifi/full_p4wifi.mk)

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/oct/config/common_full_tablet_wifionly.mk)

#
# Override AOSP build properties.
# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := oct_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung
endif
