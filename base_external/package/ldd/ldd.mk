
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 'cc9c63200e2c4bc36e6f99cb11225afdaf2cfbd4'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-CiroDonnarumma89.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS += misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))
$(eval $(generic-package))