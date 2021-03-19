#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/YunYinIot0864
	NAME:=YinYun Iot 8MB Flash/64MB RAM
	PACKAGES:=\
	kmod-usb-core kmod-usb2 kmod-usb-ohci \
	kmod-ledtrig-netdev kmod-ledtrig-usbdev kmod-ledtrig-gpio kmod-ledtrig-heartbeat \
	mountd \
	uhttpd rpcd rpcd-mod-iwinfo \
	kmod-fs-vfat kmod-fs-exfat kmod-fs-ext4 block-mount e2fsprogs \
	kmod-nls-base kmod-nls-cp437 kmod-nls-iso8859-1 kmod-nls-utf8 kmod-usb-storage \
	mtk-wifi airkiss webui ated luci reg maccalc \
	gateway luci-i18n-base-zh-cn \
	mtk-mt76x8-linkwatch
endef


define Profile/YunYinIot0864/Config
	select LUCI_LANG_zh-cn
endef


define Profile/YunYinIot0864/Description
	YinYun Iot 8MB flash/64MB ram base packages.
endef

$(eval $(call Profile,YunYinIot0864))
