# Inherit some common OctOS stuff.
$(call inherit-product, vendor/oct/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/oct/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/serranoltexx/full_serranoltexx.mk)

PRODUCT_NAME := oct_serranoltexx
