LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_USES_COMMONSYS_DISPLAY_LIBRARY), true)

include $(CLEAR_VARS)
LOCAL_MODULE                  := libdisplayconfig
LOCAL_MODULE_TAGS             := optional
LOCAL_HEADER_LIBRARIES        := display_headers
LOCAL_SRC_FILES               := DisplayConfig.cpp
LOCAL_CFLAGS                  := -Wno-sign-conversion
LOCAL_CFLAGS                  += -DLOG_TAG=\"libdisplayconfig\"
LOCAL_CFLAGS                  += -DDISPLAY_CONFIG_1_4
LOCAL_SHARED_LIBRARIES        := libhidlbase libhidltransport libutils \
                                 vendor.display.config@1.0 vendor.display.config@1.4
LOCAL_EXPORT_C_INCLUDE_DIRS   := $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE                  := libdisplayconfig.vendor
LOCAL_VENDOR_MODULE           := true
LOCAL_MODULE_TAGS             := optional
LOCAL_HEADER_LIBRARIES        := display_headers
LOCAL_SRC_FILES               := DisplayConfig.cpp
LOCAL_CFLAGS                  := -Wno-sign-conversion
LOCAL_CFLAGS                  += -DLOG_TAG=\"libdisplayconfig\"
LOCAL_CFLAGS                  += -DDISPLAY_CONFIG_1_4
LOCAL_SHARED_LIBRARIES        := libhidlbase libhidltransport libutils \
                                 vendor.display.config@1.0 vendor.display.config@1.4
LOCAL_EXPORT_C_INCLUDE_DIRS   := $(LOCAL_PATH)

ifeq ($(LLVM_SA), true)
    LOCAL_CFLAGS += --compile-and-analyze --analyzer-perf --analyzer-Werror
endif

include $(BUILD_SHARED_LIBRARY)
endif
