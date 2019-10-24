INSTALL_TARGET_PROCESSES = Filza

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FilzaThemeManager

FilzaThemeManager_FILES = Tweak.x
FilzaThemeManager_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += filzatmprefs
SUBPROJECTS += filzatmapp
include $(THEOS_MAKE_PATH)/aggregate.mk
