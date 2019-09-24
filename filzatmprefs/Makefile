include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = filzatmprefs

filzatmprefs_FILES = BetterPSSliderTableCell.mm FTMRootListController.m FTMBackgroundListController.m FTMBarBackgroundListController.m FTMLightGrayListController.m FTMSecondaryListController.m FTMTextListController.m FTMSelectedListController.m FTMColorsListController.m
filzatmprefs_INSTALL_PATH = /Library/PreferenceBundles
filzatmprefs_FRAMEWORKS = UIKit
filzatmprefs_PRIVATE_FRAMEWORKS = Preferences
filzatmprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/filzatmprefs.plist$(ECHO_END)
