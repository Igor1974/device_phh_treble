TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
#include vendor/gapps/arm64/arm64-vendor.mk
include vendor/gms/gms_pico.mk

$(call inherit-product, device/phh/treble/evox.mk)
#include vendor/pixel-framework/config.mk
#include vendor/google/pixel/config.mk

PRODUCT_NAME := evox_gsi_pico
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Evolution-X Treble

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

WITH_ADB_INSECURE := true
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

WITH_SU := false
EVO_BUILD_TYPE := Unofficial
BUILD_BCR := true
TARGET_DISABLE_EPPE := true
TARGET_SUPPORT_BOOT_ANIMATIONS := true

TARGET_HAS_UDFPS := true


#remove makupgoogle
