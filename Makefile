include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FilzaThemeManager
FilzaMatrixTheme_FILES = Tweak.xm
FilzaMatrixTheme_FRAMEWORKS = UIKit
SUBPROJECTS += filzatmprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
