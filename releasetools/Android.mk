#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2016 The JDCTeam
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := loki_flash.c loki_patch.c loki_find.c loki_unlok.c loki_main.c
LOCAL_MODULE := loki_tool
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/install/bin
LOCAL_STATIC_LIBRARIES := libc
LOCAL_CFLAGS += -Wno-pointer-arith -Wno-sign-compare
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := loki.sh
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/install/etc
LOCAL_SRC_FILES := loki.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := loki_bootloaders
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/install/etc
LOCAL_SRC_FILES := loki_bootloaders
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := recovery-transform.sh
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/install/etc
LOCAL_SRC_FILES := loki-recovery.sh
include $(BUILD_PREBUILT)
