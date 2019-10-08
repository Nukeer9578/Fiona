include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = FionaPrefs
FionaPrefs_FILES = FionaPrefsController.mm
FionaPrefs_INSTALL_PATH = /Library/PreferenceBundles
FionaPrefs_FRAMEWORKS = UIKit QuartzCore CoreGraphics MessageUI Social Twitter
FionaPrefs_PRIVATE_FRAMEWORKS = Preferences
#FionaPrefs_CFLAGS = -fobjc-arc

#FionaPrefs_LDFLAGS = -Wl,-segalign,4000

FionaPrefs_ARCHS = armv7 arm64 arm64e
export ARCHS = armv7 arm64 arm64e

include $(THEOS_MAKE_PATH)/bundle.mk

all::
	@echo "[+] Copying Files..."
	@cp ./.theos/FionaPrefs.bundle/FionaPrefs $(THEOS_STAGING_DIR)/Library/PreferenceBundles/FionaPrefs.bundle/FionaPrefs
	@ldid -S $(THEOS_STAGING_DIR)/Library/PreferenceBundles/FionaPrefs.bundle/FionaPrefs
	@echo "DONE"
	
	