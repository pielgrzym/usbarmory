################################################################################
#
# INTERLOCK
#
################################################################################

INTERLOCK_VERSION_DUMMY = 5422589e2ced3686b362dda148c83a063510fe5c
INTERLOCK_VERSION = 0ccfea7e761edccf543d93cb19f49daf16ed6d1f
INTERLOCK_SITE = $(call github,inversepath,interlock,$(INTERLOCK_VERSION_DUMMY))
INTERLOCK_REPO = file:///home/pielgrzym/work/interlock/git
#INTERLOCK_REPO = https://github.com/inversepath/interlock

INTERLOCK_LICENSE = GPLv3
INTERLOCK_LICENSE_FILES = LICENSE

# the INTERLOCK repository uses submodules which are not compliant with the
# Buildroot way, therefore we need a less than ideal hack inspired by
# http://lists.busybox.net/pipermail/buildroot/2013-March/069811.html
define INTERLOCK_EXTRACT_CMDS
	rm -rf $(@D)
	(git clone  $(INTERLOCK_REPO) $(@D) && \
	cd $(@D) && \
	git checkout $(INTERLOCK_VERSION) && \
	git submodule init && \
	git submodule update)
	touch $(@D)/.stamp_downloaded
endef

ifeq ($(BR2_PACKAGE_INTERLOCK_TEXTSECURE),y)
INTERLOCK_MAKE_TARGET="with_textsecure"
else
INTERLOCK_MAKE_TARGET="build"
endif

define INTERLOCK_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(INTERLOCK_MAKE_TARGET) GOARCH=arm CC=$(TARGET_CC) CGO_ENABLED=1 -C $(@D)
	mkdir -p $(TARGET_DIR)/usr/share/interlock
	cp -r $(@D)/static $(TARGET_DIR)/usr/share/interlock
	$(INSTALL) -m 0755 -D $(@D)/interlock $(TARGET_DIR)/usr/bin/interlock
endef

$(eval $(generic-package))
