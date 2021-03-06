# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

$(call inherit-product, device/htc/himaul/full_himaul.mk)

PRODUCT_NAME := aicp_himaul

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="htc_himaulatt" \
    PRODUCT_NAME="himaulatt_na_gen_unlock" \
    PRIVATE_BUILD_DESC="4.30.617.12 CL894012 release-keys"

BUILD_FINGERPRINT="htc/himaulatt_na_gen_unlock/htc_himaulatt:7.0/NRD90M/894012.12:user/release-keys"

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Julian Veit (Claymore1297), Ali B (eyosen), Joel Stein (k4y0z)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/config/bootanimation.mk
