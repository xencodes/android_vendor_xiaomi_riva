LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),riva)

include $(CLEAR_VARS)
LOCAL_MODULE := libtime_genoff
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libtime_genoff.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libtime_genoff.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := datastatusnotification
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/app/datastatusnotification/datastatusnotification.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fastdormancy
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/app/fastdormancy/fastdormancy.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := QtiTelephonyService
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/app/QtiTelephonyService/QtiTelephonyService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shutdownlistener
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/app/shutdownlistener/shutdownlistener.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TimeService
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/app/TimeService/TimeService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.qualcomm.location
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/priv-app/com.qualcomm.location/com.qualcomm.location.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcrilmsgtunnel
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := colorservice
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/vendor/app/colorservice/colorservice.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := imssettings
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/vendor/app/imssettings/imssettings.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.qti.location.sdk
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/com.qti.location.sdk.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := imscmlibrary
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/imscmlibrary.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcrilhook
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/qcrilhook.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_hx8394F_HD720p_video_BOE
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/etc/qdcm_calib_data_hx8394F_HD720p_video_BOE.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_ili9881c_HD720p_video_Tianma
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/etc/qdcm_calib_data_ili9881c_HD720p_video_Tianma.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_nt35521s_HD720p_video_EBBG
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/etc/qdcm_calib_data_nt35521s_HD720p_video_EBBG.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)


$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib &> /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so &> /dev/null&& popd &> /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 &> /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so &&> /dev/null& popd &> /dev/null)

ifeq ($(LOCAL_PATH)/radio, $(wildcard $(LOCAL_PATH)/radio))

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))
$(call add-radio-file,../../../device/xiaomi/riva/radio/filesmap)

endif

endif