# Inherit AOSP device configuration for vivo
$(call inherit-product, device/htc/vivo/full_vivo.mk)

# Inherit some common stuff
$(call inherit-product, vendor/kaijura/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Common Files
PRODUCT_COPY_FILES += \
	vendor/lord/prebuilt/media/bootanimation_johnblundon.zip:system/media/bootanimation.zip \

#
# Setup device specific product configuration.
#
PRODUCT_NAME := htc_vivo
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := vivo
PRODUCT_MODEL := HTC Incredible S
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys

# Lord Version
PRODUCT_VERSION_MAJOR = 5
PRODUCT_VERSION_MINOR = 6
PRODUCT_VERSION_MAINTENANCE = test
PRODUCT_VERSION_GOOAOKP = 7

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=vivo-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
	ro.goo.developerid=IceCold \
	ro.goo.rom=IceColdAOKP \
	ro.goo.version=$(PRODUCT_VERSION_GOOAOKP)
