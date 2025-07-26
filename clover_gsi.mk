TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

# $(call inherit-product. vendor/gapps/arm64/arm64-vendor.mk)

$(call inherit-product, device/phh/treble/clover.mk)

PRODUCT_NAME := clove_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Clover Treble


TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
WITH_ADB_INSECURE := true
TARGET_DISABLE_EPPE := true
