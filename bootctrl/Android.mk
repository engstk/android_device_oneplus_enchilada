LOCAL_PATH := $(call my-dir)

# Static library for the target. Used by update_engine_sideload from recovery.
include $(CLEAR_VARS)
LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/gpt-utils/inc
LOCAL_CFLAGS += -Wall -Werror
LOCAL_SHARED_LIBRARIES := liblog libgptutils libcutils
LOCAL_HEADER_LIBRARIES := libhardware_headers libsystem_headers
LOCAL_SRC_FILES := boot_control.cpp
LOCAL_MODULE := bootctrl.sdm845
include $(BUILD_STATIC_LIBRARY)
