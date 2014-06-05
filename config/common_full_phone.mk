# Inherit common stuff
$(call inherit-product, vendor/oct/config/common.mk)

# Add Bootanimation
PRODUCT_COPY_FILES += \
	vendor/oct/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Add apns configs
$(call inherit-product, vendor/oct/config/telephony.mk)
