#
# Copyright (C) 2011 The Android Open-Source Project
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

BOARD_KERNEL_CMDLINE := console=ttySHL0,115200,n8 androidboot.hardware=geehrc lpj=67677
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000

TARGET_KERNEL_CONFIG := j1sp-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/gee

# inherit from gee-common
-include device/lge/gee-common/BoardConfigCommon.mk

# assert
TARGET_OTA_ASSERT_DEVICE := geebus,geebusc,geehrc,geehrc4g,gee_sp,geehrc_sp,ls970,geehrc4g_spr_us

# board-info
TARGET_BOARD_INFO_FILE := device/lge/geehrc4g_spr_us/board-info.txt

# inherit from the proprietary version
-include vendor/lge/geehrc_sp/BoardConfigVendor.mk

TARGET_PROVIDES_INIT_RC := true
