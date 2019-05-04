# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/sagit

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := sagit_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := sagit

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_sagit
TARGET_RECOVERY_DEVICE_MODULES := libinit_sagit

# Inherit from proprietary files
include vendor/xiaomi/sagit/BoardConfigVendor.mk
