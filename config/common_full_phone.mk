# Inherit common stuff
$(call inherit-product, vendor/oct/config/common.mk)

# Add apns configs
$(call inherit-product, vendor/oct/config/telephony.mk)
