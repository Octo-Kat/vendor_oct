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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy
    
# OctOS Packages   
PRODUCT_PACKAGES += \
    OctSun \
    OctOTA \
    OctPhase \
    OctPapers
    
# Prebuilt Apps
PRODUCT_COPY_FILES +=  \
    vendor/oct/prebuilt/Torch.apk:system/app/Torch.apk 

# T-Mobile theme engine
include vendor/oct/config/themes_common.mk

# Versioning System
# KitKat OctoKat beta releases
PRODUCT_VERSION_MAJOR = 4.4.2
PRODUCT_VERSION_MINOR = beta
PRODUCT_VERSION_MAINTENANCE = 2
ifdef OCT_BUILD_EXTRA
    SLIM_POSTFIX := -$(OCT_BUILD_EXTRA)
endif
ifndef OCT_BUILD_TYPE
    OCT_BUILD_TYPE := OFFICIAL
    PLATFORM_VERSION_CODENAME := OFFICIAL
    OCT_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
endif

# Set all versions
OCT_VERSION := Oct-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(OCT_BUILD_TYPE)$(OCT_POSTFIX)
OCT_MOD_VERSION := Oct-$(OCT_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(OCT_BUILD_TYPE)$(OCT_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    oct.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.oct.version=$(OCT_VERSION) \
    ro.modversion=$(OCT_MOD_VERSION)
