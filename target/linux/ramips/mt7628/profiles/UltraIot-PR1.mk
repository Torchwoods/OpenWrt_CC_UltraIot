#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/UltraIot-PR1
	NAME:=UltraIot-PR1
	PACKAGES:=\
		kmod-usb-core kmod-usb2 kmod-usb-ohci \
		kmod-ledtrig-usbdev
endef

define Profile/Default/Description
	UltraIot-PR1
endef
$(eval $(call Profile,UltraIot-PR1))
