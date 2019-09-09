include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = FilzaMTPrefs

FilzaMTPrefs_FILES = ftmRootListController.m
FilzaMTPrefs_INSTALL_PATH = /Library/PreferenceBundles
FilzaMTPrefs_FRAMEWORKS = UIKit
FilzaMTPrefs_PRIVATE_FRAMEWORKS = Preferences
FilzaMTPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/FilzaMTPrefs.plist$(ECHO_END)
