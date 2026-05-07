PRODUCT_SOONG_NAMESPACES += \
    vendor/miuicamera

LOCAL_PATH := vendor/miuicamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/miuicamera/proprietary/system/priv-app/MiuiCamera/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCameraCamera/lib) \
    $(LOCAL_PATH)/proprietary/vendor/etc/camera/sceneDetection.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sceneDetection.xml \

PRODUCT_PACKAGES += \
    MiuiCamera

# Props
PRODUCT_SYSTEM_PROPERTIES += \
    persist.camera.eis.enabled=1 \
    ro.camera.sound.forced=0 \
    vendor.camera.aux.packagelist=com.android.camera,app.grapheneos.camera \
    vendor.camera.aux.packageblacklist=org.telegram.messenger,com.discord \
    persist.vendor.camera.privapp.list=com.android.camera,app.grapheneos.camera

# Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/miuicamera/sepolicy/private