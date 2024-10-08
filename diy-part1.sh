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



# Add a feed source
 git clone https://github.com/QC3284/luci-app-uugamebooster.git package/luci-app-uugamebooster
#git clone https://github.com/leshanydy2022/luci-app-adguardhome.git package/luci-app-adguardhome
＃git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
#git clone https://github.com/dzhuqi/mysql.git package/mysql
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
