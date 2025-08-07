TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product-if-exists, vendor/google/gms/config.mk)
$(call inherit-product-if-exists, vendor/google/pixel/config.mk)

$(call inherit-product, device/phh/treble/derp.mk)

PRODUCT_NAME := derpfest_gsi_gapps
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := DerpFest GSI

# OTA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/Doze-off/Derpfest_treble/16.0/ota.json

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

WITH_ADB_INSECURE := true

WITH_GMS := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29
