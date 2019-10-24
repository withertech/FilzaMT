include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = FilzaTM

FilzaTM_FILES = main.m FTMAppDelegate.m
FilzaTM_FRAMEWORKS = UIKit CoreGraphics
FilzaTM_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"FilzaTM\"" || true
