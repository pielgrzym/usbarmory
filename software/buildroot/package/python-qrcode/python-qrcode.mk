################################################################################
#
# python-qrcode
#
################################################################################

PYTHON_QRCODE_VERSION = 5.2.2
PYTHON_QRCODE_SOURCE = qrcode-$(PYTHON_QRCODE_VERSION).tar.gz
PYTHON_QRCODE_SITE = https://pypi.python.org/packages/source/q/qrcode
PYTHON_QRCODE_SETUP_TYPE = distutils
PYTHON_QRCODE_LICENSE = BSD-3c
PYTHON_QRCODE_DEPENDENCIES = python-pillow
PYTHON_QRCODE_LICENSE_FILES = LICENSE

$(eval $(python-package))
