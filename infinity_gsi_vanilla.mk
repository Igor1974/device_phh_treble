TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)


$(call inherit-product, device/phh/treble/infinity.mk)

PRODUCT_NAME := infinity_gsi_vanilla
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Infinity X Treble

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# OTA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/Doze-off/ProjectInfinity-X_gsi/16/ota.json

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

PRODUCT_PACKAGES += apns-conf.xml

WITH_ADB_INSECURE := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29

WITH_GAPPS := false

