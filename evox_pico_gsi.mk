TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/evox.mk)

PRODUCT_NAME := evox_gsi_pico
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Evolution-X Treble

EVO_BUILD_TYPE := Unofficial
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
WITH_ADB_INSECURE := true
TARGET_DISABLE_EPPE := true
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true
