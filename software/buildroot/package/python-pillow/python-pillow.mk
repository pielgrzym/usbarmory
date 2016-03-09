################################################################################
#
# python-pillow
#
################################################################################

PYTHON_PILLOW_VERSION = 1.3
PYTHON_PILLOW_SOURCE = Pillow-$(PYTHON_PILLOW_VERSION).zip
PYTHON_PILLOW_SITE = https://pypi.python.org/packages/source/P/Pillow
PYTHON_PILLOW_SETUP_TYPE = distutils
PYTHON_PILLOW_LICENSE = BSD-3c
PYTHON_PILLOW_LICENSE_FILES = LICENSE

define PYTHON_PILLOW_EXTRACT_CMDS
        $(UNZIP) -d $(@D) $(DL_DIR)/$(PYTHON_PILLOW_SOURCE)
        mv $(@D)/Pillow-$(PYTHON_PILLOW_VERSION)/* $(@D)
        $(RM) -r $(@D)/Pillow-$(PYTHON_PILLOW_VERSION)
endef

$(eval $(python-package))
