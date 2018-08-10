
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := debugexploit
LOCAL_SRC_FILES := futex_requeue.c main.c
LOCAL_LDFLAGS   += -llog
LOCAL_CFLAGS    += -DDEBUG
LOCAL_CFLAGS    += -fno-stack-protector -O0
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE    := chmodsu
LOCAL_SRC_FILES := futex_requeue.c main.c
LOCAL_LDFLAGS   += -llog
LOCAL_CFLAGS    += -DDEBUG -DCHMODSU
LOCAL_CFLAGS    += -fno-stack-protector -O0
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE    := mvsu
LOCAL_SRC_FILES := futex_requeue.c main.c
LOCAL_LDFLAGS   += -llog
LOCAL_CFLAGS    += -DDEBUG -DMVSU
LOCAL_CFLAGS    += -fno-stack-protector -O0
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_CFLAGS    += -fno-stack-protector -O0
LOCAL_MODULE    := exploit
LOCAL_SRC_FILES := futex_requeue.c main.c

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE    := futex_exploit_check
LOCAL_SRC_FILES := futex_exploit_check.c
LOCAL_LDFLAGS   += -llog
LOCAL_CFLAGS    += -DDEBUG
LOCAL_CFLAGS    += -fno-stack-protector -O0
include $(BUILD_EXECUTABLE)
