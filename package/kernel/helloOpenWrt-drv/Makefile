include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=helloOpenWrt-drv
PKG_VERSION:=1.0

define KernelPackage/helloOpenWrt-drv
	SUBMENU:=Other modules
	TITLE:=helloOpenWrt-drv for test
	FILES:=$(PKG_BUILD_DIR)/helloOpenWrt.ko
	#自动加载， 30 表示优先级（1 最优先），后面的 helloOpenWrt 表示模块名称
	#AUTOLOAD:=$(call AutoLoad,30,helloOpenWrt)
endef
define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
		ARCH="$(LINUX_KARCH)" \
		CROSS_COMPILE="$(TARGET_CROSS)" \
		SUBDIRS="$(PKG_BUILD_DIR)" \
		EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
		$(EXTRA_KCONFIG) \
		modules
endef
$(eval $(call KernelPackage,helloOpenWrt-drv))

