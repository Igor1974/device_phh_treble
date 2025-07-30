TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/rising.mk)

PRODUCT_NAME := rising_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Rising Revived Treble

TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

PRODUCT_PACKAGES += apns-conf.xml


RISING_MAINTAINER := Doze-off
TARGET_ENABLE_BLUR := true


TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# WITH_GMS := false
# WITH_MICROG := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29

