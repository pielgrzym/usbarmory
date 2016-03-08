#############################################################
#
# python-slowaes
#
#############################################################

PYTHON_SLOWAES_VERSION = 0.1a1
PYTHON_SLOWAES_SITE = https://pypi.python.org/packages/source/s/slowaes
PYTHON_SLOWAES_SOURCE = slowaes-$(PYTHON_SLOWAES_VERSION).tar.gz
PYTHON_SLOWAES_DEPENDENCIES = python host-python-setuptools

define PYTHON_SLOWAES_BUILD_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build)
endef

define PYTHON_SLOWAES_INSTALL_TARGET_CMDS
	(cd $(@D); \
		PYTHONPATH="$(TARGET_DIR)/usr/lib/python$(PYTHON_VERSION_MAJOR)/site-packages" \
		$(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
