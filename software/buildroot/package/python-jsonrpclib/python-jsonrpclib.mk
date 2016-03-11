################################################################################
#
# python-jsonrpclib
#
################################################################################

PYTHON_JSONRPCLIB_VERSION = 0.2.6
PYTHON_JSONRPCLIB_SOURCE = jsonrpclib-pelix-$(PYTHON_JSONRPCLIB_VERSION).zip
PYTHON_JSONRPCLIB_SITE = https://pypi.python.org/packages/source/j/jsonrpclib-pelix
PYTHON_JSONRPCLIB_SETUP_TYPE = distutils
PYTHON_JSONRPCLIB_LICENSE = BSD-3c
PYTHON_JSONRPCLIB_LICENSE_FILES = LICENSE

define PYTHON_JSONRPCLIB_EXTRACT_CMDS
        $(UNZIP) -d $(@D) $(DL_DIR)/$(PYTHON_JSONRPCLIB_SOURCE)
        mv $(@D)/jsonrpclib-pelix-$(PYTHON_JSONRPCLIB_VERSION)/* $(@D)
        $(RM) -r $(@D)/jsonrpclib-pelix-$(PYTHON_JSONRPCLIB_VERSION)
endef

$(eval $(python-package))
