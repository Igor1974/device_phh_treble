TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

# $(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)


$(call inherit-product, device/phh/treble/wit.mk)

PRODUCT_NAME := witaqua_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := WitAqua Treble

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

PRODUCT_PACKAGES += apns-conf.xml

WITH_ADB_INSECURE := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29




#remove makupgoogle
