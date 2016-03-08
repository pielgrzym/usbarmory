#############################################################
#
# electrum
#
#############################################################

ELECTRUM_VERSION = 2.6.2
ELECTRUM_SOURCE = $(ELECTRUM_VERSION).tar.gz
ELECTRUM_SITE = https://github.com/spesmilo/electrum/archive
ELECTRUM_DEPENDENCIES = python python-setuptools python-slowaes python-ecdsa
ELECTRUM_LICENSE = MIT

define ELECTRUM_BUILD_CMDS
        (cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build --executable=/usr/bin/python)
endef

define ELECTRUM_INSTALL_TARGET_CMDS
        (cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
