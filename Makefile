include $(THEOS)/makefiles/common.mk

SYSROOT=$(THEOS)/theosroot
ARCHS = armv7 arm64 arm64e
GO_EASY_ON_ME=1

TWEAK_NAME = Fiona
Fiona_FILES = Fiona.xm
Fiona_FRAMEWORKS = CydiaSubstrate Foundation UIKit

Fiona_LDFLAGS = -Wl,-segalign,4000


Fiona_ARCHS = armv7 arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk

	
after-install::
	@echo "[+] Copying Files..."
	@cp ./.theos/obj/debug/Fiona.dylib $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/Fiona.dylib
	@/usr/bin/ldid -S $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/Fiona.dylib
	@echo "DONE"
	#@killall SpringBoard

#SUBPROJECTS += FionaPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk