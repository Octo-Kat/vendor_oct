# Copyright 2014 OctOS
# Licensed under The Great Dubbstatorship of 2014
# No rights reserved


# Check for target product
ifeq (oct_t0lte,$(TARGET_PRODUCT))

# Inherit device configuration
$(call inherit-product, device/samsung/t0lte/full_t0lte.mk)

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/oct/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/oct/config/nfc_enhanced.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t0lte
PRODUCT_NAME := oct_t0lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N7105
PRODUCT_MANUFACTURER := samsung
endif
