# Generic Lord product
PRODUCT_NAME := lord
PRODUCT_BRAND := lord
PRODUCT_DEVICE := generic

# Include GSM stuff
$(call inherit-product, vendor/kaijura/products/gsm.mk)

PRODUCT_PACKAGES += \
    Superuser \
    Mms \
    Camera

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false


PRODUCT_COPY_FILES += \
    vendor/kaijura/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/kaijura/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/kaijura/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/kaijura/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/kaijura/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/kaijura/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/kaijura/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/kaijura/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/kaijura/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/kaijura/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/kaijura/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/kaijura/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/kaijura/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/kaijura/prebuilt/setup/overlay:system/setup/overlay
