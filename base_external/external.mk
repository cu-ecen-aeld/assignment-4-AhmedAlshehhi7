################################################################################
# external.mk for the AESD_assignments package
################################################################################

AESD_ASSIGNMENTS_VERSION = master

# The SSH URL for your Assignment 3 repository (replace <username> with your GitHub username)
AESD_ASSIGNMENTS_SITE = ssh://git@github.com/<username>/assignment-3-and-later.git
AESD_ASSIGNMENTS_SITE_METHOD = git

AESD_ASSIGNMENTS_DIR = $(BUILD_DIR)/aesd_assignments

AESD_ASSIGNMENTS_LICENSE = GPL-2.0
AESD_ASSIGNMENTS_LICENSE_FILES = COPYING

AESD_ASSIGNMENTS_DEPENDENCIES =

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) -C $(AESD_ASSIGNMENTS_DIR)
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(AESD_ASSIGNMENTS_DIR)/finder-app/finder.sh $(TARGET_DIR)/usr/bin/finder.sh
	$(INSTALL) -D -m 0755 $(AESD_ASSIGNMENTS_DIR)/finder-app/writer $(TARGET_DIR)/usr/bin/writer
	$(INSTALL) -D -m 0755 $(AESD_ASSIGNMENTS_DIR)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin/finder-test.sh
	$(INSTALL) -D -m 0755 $(AESD_ASSIGNMENTS_DIR)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin/assignment-1-test.sh
	$(INSTALL) -D -m 0644 $(AESD_ASSIGNMENTS_DIR)/finder-app/conf/username.txt $(TARGET_DIR)/etc/finder-app/username.txt
	$(INSTALL) -D -m 0644 $(AESD_ASSIGNMENTS_DIR)/finder-app/conf/assignment.txt $(TARGET_DIR)/etc/finder-app/assignment.txt
endef

$(eval $(generic-package))

