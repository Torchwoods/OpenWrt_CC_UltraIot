include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=helloOpenWrt
PKG_VERSION:=1.0

define Package/helloOpenWrt
	CATEGORY:=UltraIot
	#DEPENDS:= 如果需要依赖其他软件包，在这里添加
	TITLE:=helloOpenWrt for test
	MAINTAINER:=UltraIot <UltraIot@163.com>
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/helloOpenWrt/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/helloOpenWrt $(1)/bin/
endef

define Package/helloOpenWrt/preinst
	#!/bin/sh
	echo 'before install $(PKG_NAME)'
endef

$(eval $(call BuildPackage,helloOpenWrt))

