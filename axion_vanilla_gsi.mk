TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/axion.mk)

PRODUCT_NAME := axion_vanilla_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Axion Treble

AXION_MAINTAINER := Doze-off
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true

WITH_GMS := false
