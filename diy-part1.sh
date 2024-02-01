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
#sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git dzhuqi https://github.com/dzhuqi/12.git" >> "feeds.conf.default"
 #sed -i '$a src-git smpackage https://github.com/dzhuqi/12.git' feeds.conf.default
# Add a feed source
#git clone https://github.com/liuran001/openwrt-packages package/liuran001
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

#git clone https://github.com/rozhuk-im/msd_litea package/msd_litea
#git clone https://github.com/dzhuqi/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
git clone https://github.com/dzhuqi/mysql.git package/mysql
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#git clone https://github.com/sirpdboy/luci-app-ddns-go package/luci-app-ddns-go
#git clone https://github.com/f8q8/luci-app-autoreboot package/luci-app-autoreboot
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone https://github.com/yasum2006/luci-app-passwall package/luci-app-passwall
# 替换默认主题
#rm -rf package/lean/luci-theme-argon 
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon
## 解除系统限制
ulimit -u 10000
ulimit -n 4096
ulimit -d unlimited
ulimit -m unlimited
ulimit -s unlimited
ulimit -t unlimited
ulimit -v unlimited
