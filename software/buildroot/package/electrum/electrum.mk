#############################################################
#
# electrum
#
#############################################################

ELECTRUM_VERSION = 2.6.2
ELECTRUM_SOURCE = $(ELECTRUM_VERSION).tar.gz
ELECTRUM_SITE = https://github.com/spesmilo/electrum/archive
ELECTRUM_DEPENDENCIES = python python-setuptools python-slowaes python-ecdsa python-requests python-protobuf dnspython python-pbkdf2 python-six
ELECTRUM_SETUP_TYPE = setuptools
ELECTRUM_LICENSE = MIT

$(eval $(python-package))
