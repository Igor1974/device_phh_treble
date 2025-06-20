TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
#include vendor/gapps/arm64/arm64-vendor.mk
# include vendor/gms/gms_pico.mk

$(call inherit-product, device/phh/treble/gemify.mk)
#include vendor/pixel-framework/config.mk
#include vendor/google/pixel/config.mk

PRODUCT_NAME := gemify_gsi_pico
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := GemifyOS Treble

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

WITH_ADB_INSECURE := true
# CORE build flags
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

WITH_SU := false

TARGET_DISABLE_EPPE := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29
#remove makupgoogle
