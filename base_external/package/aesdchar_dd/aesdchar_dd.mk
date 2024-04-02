##############################################################
#
# LDD.MK
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESDCHAR_DD_VERSION ='d89f06ed7ca808e55b428ac8aafc6cc3edb911be'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_DD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-SrirajVemparala.git
AESDCHAR_DD_SITE_METHOD = git
AESDCHAR_DD_GIT_SUBMODULES = YES

AESDCHAR_DD_MODULE_SUBDIRS = aesd-char-driver

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESDCHAR_DD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
