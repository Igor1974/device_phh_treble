TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
# include vendor/gapps/arm64/arm64-vendor.mk
# include vendor/google/overlays/ThemeIcons/config.mk
# include vendor/pixel-style/config/common.mk
# include vendor/gms/gms_pico.mk

$(call inherit-product, device/phh/treble/voltage.mk)
#include vendor/pixel-framework/config.mk
#include vendor/google/pixel/config.mk

PRODUCT_NAME := voltage_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := VoltageOS Treble

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
