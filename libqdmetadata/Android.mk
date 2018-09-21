LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_USES_COMMONSYS_DISPLAY_LIBRARY), true)
include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES          := liblog libcutils libutils
LOCAL_HEADER_LIBRARIES          := libhardware_headers display_intf_headers
LOCAL_EXPORT_HEADER_LIBRARY_HEADERS := display_intf_headers
LOCAL_SRC_FILES                 := qdMetaData.cpp qd_utils.cpp
LOCAL_CFLAGS                    := -Wno-sign-conversion
LOCAL_CFLAGS                    += -DLOG_TAG=\"qdmetadata\"
LOCAL_MODULE_TAGS               := optional
LOCAL_MODULE                    := libqdMetaData
LOCAL_VENDOR_MODULE             := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES          := liblog libcutils libutils
LOCAL_HEADER_LIBRARIES          := libhardware_headers display_intf_headers
LOCAL_EXPORT_HEADER_LIBRARY_HEADERS := display_intf_headers
LOCAL_SRC_FILES                 := qdMetaData.cpp qd_utils.cpp
LOCAL_CFLAGS                    := -Wno-sign-conversion
LOCAL_CFLAGS                    += -DLOG_TAG=\"qdmetadata\"
LOCAL_MODULE_TAGS               := optional
LOCAL_MODULE                    := libqdMetaData.system
include $(BUILD_SHARED_LIBRARY)
endif
