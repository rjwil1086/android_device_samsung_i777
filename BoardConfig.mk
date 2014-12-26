#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/i777/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i777/bluetooth

# NFC
BOARD_HAVE_NFC := true

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin
TARGET_KERNEL_CONFIG := custom_i777_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := i777,SGH-I777,SGH-S959G

# TWRP
DEVICE_RESOLUTION := 480x800
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_JB_CRYPTO := false
TW_INCLUDE_L_CRYPTO := true

# Use the non-open-source parts, if they're present
-include vendor/samsung/i777/BoardConfigVendor.mk
