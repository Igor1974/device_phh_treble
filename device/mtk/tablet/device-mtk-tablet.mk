# MTK Tablet Fix Kit: Universal fix for MediaTek-based tablets (MT8788, MT8768, MT8167, etc.)
# Devices: F+ T800, Lenovo TB-87xx, Alldocube iPlay, and others

$(call inherit-product, device/phh/treble/base.mk)

# Fixes: ubsan: sub-overflow in libmedia_codeclist_capabilities.so
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/../../proprietary/mtk/tablet/lib64/libmedia_codeclist_capabilities.so:system/lib64/libmedia_codeclist_capabilities.so \
    $(LOCAL_PATH)/../../proprietary/mtk/tablet/lib/libmedia_codeclist_capabilities.so:system/lib/libmedia_codeclist_capabilities.so

# === 2. SELinux: доступ к /sys/class/mm ===
# Fixes: avc: denied { search } for name="mm"
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/../../sepolicy/mtk_tablet

# === 3. Название устройства ===
PRODUCT_NAME := mtk_tablet
PRODUCT_DEVICE := mtk_tablet
PRODUCT_BRAND := MediaTek
PRODUCT_MODEL := MT87xx Tablet
PRODUCT_MANUFACTURER := MediaTek

PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.mode=OPTIONAL
