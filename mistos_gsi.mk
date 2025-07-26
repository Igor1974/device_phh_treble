TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

# $(call inherit-product. vendor/gapps/arm64/arm64-vendor.mk)

$(call inherit-product, device/phh/treble/mist.mk)

PRODUCT_NAME := mistos_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := MistOS Treble

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
TARGET_DISABLE_EPPE := true

# MistOS Flags
MISTOS_MAINTAINER=Doze-off
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_USES_PICO_GAPPS := true

