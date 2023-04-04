#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git passwallp https://github.com/xiaorouji/openwrt-passwall;packages' >> feeds.conf.default
echo 'src-git passwalll https://github.com/xiaorouji/openwrt-passwall;luci' >> feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >> feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default


git clone -b "18.06" https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-theme-argon-config
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean//luci-app-vssr

svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/lean
