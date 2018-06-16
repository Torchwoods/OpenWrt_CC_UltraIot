#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/UltraIot-PR1
	NAME:=UtraIot Default
	PACKAGES:=\
		kmod-usb-core kmod-usb2 kmod-usb-ohci \
		kmod-ledtrig-netdev\
		mountd \
		mjpg-streamer kmod-video-core kmod-video-uvc\
		kmod-fs-vfat kmod-fs-exfat kmod-fs-ext4 kmod-fs-ntfs block-mount e2fsprogs \
		kmod-i2c-core kmod-i2c-ralink \
		kmod-nls-base kmod-nls-cp437 kmod-nls-iso8859-1 kmod-nls-utf8 \
		kmod-usb-storage kmod-usb-storage-extras kmod-usb-uhci \
		kmod-sound-core kmod-sound-mtk madplay-alsa alsa-utils \
		mtk-mt76x8-wifi  mtk-mt76x8-oled mtk-mt76x8-airkiss \
		luci \
		maccalc shairport_mmap reg ser2net minicom
#kmod-sdhci-mt7620

endef

define Profile/UltraIot-PR1/Description
	Basic UltraIot SoC support
endef
$(eval $(call Profile,UltraIot-PR1))



