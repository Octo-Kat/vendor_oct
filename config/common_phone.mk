# common
$(call inherit-product, vendor/oct/config/common.mk)

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

$(call inherit-product, vendor/oct/config/telephony.mk)
