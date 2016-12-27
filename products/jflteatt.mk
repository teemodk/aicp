# Inherit some common stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)


PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jflteuc \
  TARGET_DEVICE=jflteatt \
  BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.4.4/KTU84P/I337UCUFNJ4:user/release-keys" \
  PRIVATE_BUILD_DESC="jflteuc-user 4.4.4 KTU84P I337UCUFNJ4 release-keys"

PRODUCT_NAME := aicp_jflteatt
PRODUCT_DEVICE := jflteatt

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
