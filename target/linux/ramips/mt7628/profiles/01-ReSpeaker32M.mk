#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/ReSpeaker32M
	NAME:= ReSpeaker LD3320
	PACKAGES:=\
		kmod-usb-core kmod-usb2 kmod-usb-ohci \
		kmod-ledtrig-usbdev mountd \
		luci Chinese \
		kmod-sound-core kmod-sound-mtk madplay-alsa alsa-utils \
		kmod-sdhci-mt7620 block-mount kmod-i2c-core kmod-i2c-ralink \
		madplay-alsa alsa-utils mtk-mt76x8-wifi mtk-mt76x8-ated mtk-mt76x8-oled \
		mtk-mt76x8-airkiss mtk-mt76x8-ated 
endef

define Profile/ReSpeaker32M/Description
	ReSpeaker package set compatible with most boards.
endef
$(eval $(call Profile,ReSpeaker32M))
