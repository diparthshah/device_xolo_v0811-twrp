#
# Copyright (C) 2016 The CyanogenMod Project - MediaTek
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Architecture

TARGET_BOARD_PLATFORM := mt6753
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_CPU_CORTEX_A53 := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Architecture Extensions
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Xolo_Black-1x

# Kernel

TARGET_PREBUILT_KERNEL := device/xolo/v0811/prebuilt/kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive 
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --board 1444973795 --kernel_offset 0x00008000 --pagesize 2048 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 


# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# CFlags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_USERIMAGES_USE_EXT4 := true

# ABI lists for build.prop
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# needed for mass storage mode
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# recovery
TARGET_RECOVERY_FSTAB := device/xolo/v0811/recovery/twrp.fstab
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness

# TWRP flags
DEVICE_RESOLUTION := 1080x1920
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_MAX_BRIGHTNESS := 255
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_INCLUDE_CRYPTO := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
BOARD_SUPPRESS_SECURE_ERASE :=  true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "Micro SDCard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "Phone Storage"




