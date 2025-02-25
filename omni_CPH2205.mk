$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
(SRC_TARGET_DIR)/product/core_64_bit.mk)

PRODUCT_COPY_FILES += device/0SSI/CPH2205/prebuilt/kernel:kernel

PRODUCT_DEVICE := CPH2205
PRODUCT_NAME := omni_OSSI
PRODUCT_BRAND := OPLUS
PRODUCT_MODEL := OSSI
PRODUCT_MANUFACTURER := OPLUS

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="OPPO/CPH2205/OP4F43L1:13/TP1A.220905.001/R.1af71a4+49f9:user/release-keys"
