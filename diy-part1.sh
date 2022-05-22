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
config_generate='package/base-files/files/bin/config_generate'
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g'  package/base-files/files/bin/config_generate
sed -i "s/ImmortalWrt/EzOpwrt/g" {package/base-files/files/bin/config_generate,include/version.mk}
sed -i "s/hostname=.*/hostname='EzOpwrt'/g" package/base-files/files/bin/config_generate
# sed -i "s/ImmortalWrt/OpenWrt/g" {$config_generate,include/version.mk}
# sed -i 's/192.168.1.1/192.168.10.1/g' $config_generate
# sed -i "s/hostname='OpenWrt'/hostname='OpenWrt'/g" $config_generate
# sed -i "s/hostname='ImmortalWrt'/hostname='OpenWrt'/g"  $config_generate

rm -rf  package/emortal/default-settings  && svn co https://github.com/sirpdboy/build/trunk/default-settings ./package/emortal/default-settings
wget -qO package/base-files/files/etc/banner https://raw.githubusercontent.com/sirpdboy/build/master/banner
wget -qO package/base-files/files/etc/profile https://raw.githubusercontent.com/sirpdboy/build/master/profile
wget -qO package/base-files/files/etc/sysctl.conf https://raw.githubusercontent.com/sirpdboy/sirpdboy-package/master/set/sysctl.conf
curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-4gim> ./package/emortal/default-settings/files/zzz-default-settings

date1='Ipv6-Dz-R'`TZ=UTC-8 date +%Y.%m.%d -d +"12"hour`
sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)/Openwrt-Dz-/g' include/image.mk
echo "DISTRIB_REVISION='${date1} '" > ./package/base-files/files/etc/openwrt_release1
echo ${date1}' ' >> ./package/base-files/files/etc/banner
echo '---------------------------------' >> ./package/base-files/files/etc/banner

# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
