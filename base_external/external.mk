AESD_ASSIGNMENTS_VERSION = 1.0
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-AhmedAlshehhi7.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_DEPENDENCIES =

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(PKG_BUILD_DIR)/tester.sh $(TARGET_DIR)/usr/bin/tester.sh
    $(INSTALL) -D -m 0755 $(PKG_BUILD_DIR)/finder.sh $(TARGET_DIR)/usr/bin/finder.sh
    $(INSTALL) -D -m 0755 $(PKG_BUILD_DIR)/writer $(TARGET_DIR)/usr/bin/writer
endef

$(eval $(generic-package))

