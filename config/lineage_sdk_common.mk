# Permissions for lineage sdk services
PRODUCT_COPY_FILES += \
    vendor/sm/config/permissions/org.lineageos.audio.xml:system/etc/permissions/org.lineageos.audio.xml \
    vendor/sm/config/permissions/org.lineageos.livedisplay.xml:system/etc/permissions/org.lineageos.livedisplay.xml \
    vendor/sm/config/permissions/org.lineageos.performance.xml:system/etc/permissions/org.lineageos.performance.xml \
    vendor/sm/config/permissions/org.lineageos.profiles.xml:system/etc/permissions/org.lineageos.profiles.xml \
    vendor/sm/config/permissions/org.lineageos.settings.xml:system/etc/permissions/org.lineageos.settings.xml \
    vendor/sm/config/permissions/org.lineageos.style.xml:system/etc/permissions/org.lineageos.style.xml \
    vendor/sm/config/permissions/org.lineageos.trust.xml:system/etc/permissions/org.lineageos.trust.xml \
    vendor/sm/config/permissions/org.lineageos.weather.xml:system/etc/permissions/org.lineageos.weather.xml
 

# Lineage Platform Library
PRODUCT_PACKAGES += \
    org.lineageos.platform-res \
    org.lineageos.platform \
    org.lineageos.platform.xml

# Lineage Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.lineageos.hardware \
    org.lineageos.hardware.xml

# JNI Libraries
PRODUCT_PACKAGES += \
    liblineage-sdk_platform_jni

ifndef LINEAGE_PLATFORM_SDK_VERSION
  # This is the canonical definition of the SDK version, which defines
  # the set of APIs and functionality available in the platform.  It
  # is a single integer that increases monotonically as updates to
  # the SDK are released.  It should only be incremented when the APIs for
  # the new release are frozen (so that developers don't write apps against
  # intermediate builds).
  LINEAGE_PLATFORM_SDK_VERSION := 9
endif

ifndef LINEAGE_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each LINEAGE_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  LINEAGE_PLATFORM_REV := 0
endif
