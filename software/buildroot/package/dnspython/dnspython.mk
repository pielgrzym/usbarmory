################################################################################
#
# dnspython
#
################################################################################

DNSPYTHON_VERSION = 1.12.0
DNSPYTHON_SOURCE = dnspython-$(DNSPYTHON_VERSION).zip
DNSPYTHON_SITE = https://pypi.python.org/packages/source/d/dnspython
DNSPYTHON_SETUP_TYPE = distutils
DNSPYTHON_LICENSE = BSD-3c
DNSPYTHON_LICENSE_FILES = LICENSE
define DNSPYTHON_EXTRACT_CMDS
        $(UNZIP) -d $(@D) $(DL_DIR)/$(DNSPYTHON_SOURCE)
        mv $(@D)/dnspython-$(DNSPYTHON_VERSION)/* $(@D)
        $(RM) -r $(@D)/dnspython-$(DNSPYTHON_VERSION)
endef


$(eval $(python-package))
