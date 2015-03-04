LOCAL_PATH := $(call my-dir)

# Init scripts

include $(CLEAR_VARS)
LOCAL_MODULE            := init.e7.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.e7.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.e7.usb.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.e7.usb.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.bt_vendor.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.bt_vendor.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.class_core.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.class_core.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.early_boot.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.early_boot.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw-sensor.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw-sensor.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.syspart_fixup.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.syspart_fixup.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.usb.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.usb.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := ueventd.e7.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/ueventd.e7.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
