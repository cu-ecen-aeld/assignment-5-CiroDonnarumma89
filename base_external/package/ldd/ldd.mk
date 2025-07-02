
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = '57f9afd44c95dad11c71b94986067fdf6e955006'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-CiroDonnarumma89.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES


LDD_MODULE_SUBDIRS += misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))

define LDD_POST_BUILD
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

LDD_POST_BUILD_HOOKS += LDD_POST_BUILD


$(eval $(generic-package))