# brand
PRODUCT_BRAND ?= Oct

ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/oct/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

PRODUCT_BOOTANIMATION := vendor/oct/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip
endif

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3

# selinux dialog
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1

# Disable multithreaded dexopt by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dalvik.multithread=false

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Installer
PRODUCT_COPY_FILES += \
    vendor/oct/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/oct/prebuilt/common/etc/persist.conf:system/etc/persist.conf

# main packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    Camera \
    Development \
    FileManager \
    Galaxy4 \
    HoloSpiralWallpaper \
    LatinIME \
    LiveWallpapers \
    LiveWallpapersPicker \
    LockClock \
    MagicSmokeWallpapers \
    NoiseField \
    OctDelta \
    OmniSwitch \
    OctPhase \
    OctSun \
    PhaseBeam \
    PhotoPhase \
    PhotoTable \
    SoundRecorder \
    Torch \
    VisualizationWallpapers \
    VoicePlus \
    libemoji

# oct packages
PRODUCT_PACKAGES += \
    BlueBalls \
    Wallpapers

# DSPManager
PRODUCT_PACKAGES += \
    DSPManager \
    audio_effects.conf \
    libcyanogen-dsp

# Screen recorder
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

PRODUCT_PACKAGES += \
    libsepol \
    e2fsck \
    mke2fs \
    tune2fs \
    nano \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
vendor/oct/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# themes
include vendor/oct/config/theme_chooser.mk

# korean
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/oct/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/oct/overlay/common

# bin
PRODUCT_COPY_FILES += \
    vendor/oct/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/oct/prebuilt/common/etc/init.carbon.rc:root/init.carbon.rc

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/oct/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/oct/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/oct/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/oct/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
    
# Supersu
PRODUCT_PACKAGES += Superuser

# Backup tool
OCT_BUILD = true
PRODUCT_COPY_FILES += \
    vendor/oct/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/oct/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/oct/prebuilt/common/bin/50-oct.sh:system/addon.d/50-oct.sh \
    vendor/oct/prebuilt/common/bin/blacklist:system/addon.d/blacklist \
    vendor/oct/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/oct/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/oct/config/permissions/com.oct.android.xml:system/etc/permissions/com.oct.android.xml \
    vendor/oct/config/permissions/com.oct.nfc.enhanced.xml:system/etc/permissions/com.oct.nfc.enhanced.xml

# version
RELEASE = false
OCT_VERSION_MAJOR = 2
OCT_VERSION_MINOR = 0

# Set OCT_BUILDTYPE
ifdef OCT_NIGHTLY
    OCT_BUILDTYPE := NIGHTLY
endif
ifdef OCT_EXPERIMENTAL
    OCT_BUILDTYPE := EXPERIMENTAL
endif
ifdef OCT_RELEASE
    OCT_BUILDTYPE := RELEASE
endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by Oct Devs!)
ifdef OCT_BUILDTYPE
else
    OCT_BUILDTYPE := UNOFFICIAL
    OCT_VERSION_MAJOR :=
    OCT_VERSION_MINOR :=
endif

# Set Oct version
ifdef OCT_RELEASE
    OCT_VERSION := "OCT-KK-v"$(OCT_VERSION_MAJOR).$(OCT_VERSION_MINOR)
else
    OCT_VERSION := "OCT-KK-$(OCT_BUILDTYPE)"-$(shell date +%Y%m%d-%H%M)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.oct.version=$(OCT_VERSION) \
  ro.oct.device=$(OCT_DEVICE)

# ROM Statistics and ROM Identification
PRODUCT_PROPERTY_OVERRIDES += \
ro.romstats.askfirst=1 \
ro.romstats.ga=UA-43747246-1 \
ro.romstats.name=OctRom- \
ro.romstats.url=http://oct-stats.mattman.org \
ro.romstats.version=$(OCT_VERSION)

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false

# Audio
$(call inherit-product-if-exists, frameworks/base/data/sounds/CopyAudioFiles.mk)
