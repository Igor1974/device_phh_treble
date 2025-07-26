TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)


$(call inherit-product, device/phh/treble/wit.mk)


PRODUCT_NAME := witaqua_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := WitAqua Treble

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true

WITAQUA_BUILD_TYPE := OFFICIAL
WITAQUA_MAINTAINER := Doze-off

WITH_ADB_INSECURE := true




#remove makupgoogle
