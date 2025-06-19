TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
#include vendor/gapps/arm64/arm64-vendor.mk
include vendor/gms/gms_full.mk

$(call inherit-product, device/phh/treble/matrix.mk)
#include vendor/pixel-framework/config.mk
#include vendor/google/pixel/config.mk

PRODUCT_NAME := matrixx_gsi_gapps
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Matrixx Treble

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

WITH_ADB_INSECURE := true


WITH_SU := false
# To include Gapps
WITH_GMS := true

# To Build Google(Dailer, Message, Phone) and BCR


# To Add cinematic wallpaer support (only supported in gapps build not in vanilla remove this flag for vanilla builds)
TARGET_SUPPORTS_WALLEFFECT := true

#Some more GMS Flag

# To Add Bypass Charging Support (need to be adapted in DT and KT as well)

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29

#remove makupgoogle
