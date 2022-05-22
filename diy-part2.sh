#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-settingsim> ./package/emortal/default-settings/files/zzz-default-settings

# themes添加（svn co 命令意思：指定版本如https://github）
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add minieap
rm -rf feeds/packages/net/minieap
svn co https://github.com/immortalwrt/packages/trunk/net/minieap packages/net/minieap feeds/packages/net/minieap

# Add mentohust & luci-app-mentohust
git clone --depth=1 https://github.com/BoringCat/luci-app-mentohust package/luci-app-mentohust
git clone --depth=1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk package/MentoHUST-OpenWrt-ipk

#git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages

git clone https://github.com/sirpdboy/sirpdboy-package ./package/diy
git clone https://github.com/sirpdboy/build.git ./package/build
git clone https://github.com/loso3000/other ./package/other

git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
git clone -b luci --depth 1 https://github.com/pexcn/openwrt-chinadns-ng.git package/new/luci-app-chinadns-ng
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/new/chinadns-ng

# CPU 控制相关
rm -rf  feeds/luci/applications/luci-app-cpufreq
svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-cpufreq feeds/luci/applications/luci-app-cpufreq
ln -sf ../../../feeds/luci/applications/luci-app-cpufreq ./package/feeds/luci/luci-app-cpufreq
sed -i 's,1608,1800,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/cpufreq
sed -i 's,2016,2208,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/cpufreq
sed -i 's,1512,1608,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/cpufreq
# Add luci-app-dockerman
# rm -rf ./feeds/luci/collections/luci-lib-docker
# git clone --depth=1 https://github.com/lisaac/luci-lib-docker ./feeds/luci/collections/luci-lib-docker

rm -rf ./packages/build/ddns-scripts_dnspod
rm -rf ./package/lean/ddns-scripts_aliyun && \
svn co https://github.com/sirpdboy/build/trunk/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun

#改镜像大小8M改16M awusfree1
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt76x8.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
#改镜像大小8M改16M wr8305rt
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt7620.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts

# Passwall
rm -rf ./feeds/packages/net/pdnsd-alt
rm -rf ./feeds/packages/net/shadowsocks-libev
rm -rf ./feeds/packages/net/xray-core
rm -rf ./feeds/packages/net/kcptun
rm -rf ./feeds/packages/net/brook
rm -rf ./feeds/packages/net/chinadns-ng
rm -rf ./feeds/packages/net/dns2socks
rm -rf ./feeds/packages/net/hysteria
rm -rf ./feeds/packages/net/ipt2socks
rm -rf ./feeds/packages/net/microsocks
rm -rf ./feeds/packages/net/naiveproxy
rm -rf ./feeds/packages/net/shadowsocks-rust
rm -rf ./feeds/packages/net/simple-obfs
rm -rf ./feeds/packages/net/ssocks
rm -rf ./feeds/packages/net/tcping
rm -rf ./feeds/packages/net/v2ray*
rm -rf ./feeds/packages/net/xray*
rm -rf ./feeds/packages/net/trojan*

#bypass
#rm -rf package/build/pass/luci-app-bypass
#git clone https://github.com/kiddin9/openwrt-bypass package/bypass
# sed -i 's,default n,default y,g' ./package/build/pass/luci-app-bypass/Makefile
# sed -i 's,default n,default y,g' ./package/bypass/luci-app-bypass/Makefile

#  git clone https://github.com/loso3000/openwrt-passwall package/passwall
# svn co https://github.com/loso3000/openwrt-passwall/trunk/luci-app-passwall  package/passwall/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2 package/passwall2
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/passwall/luci-app-passwall

# pushd package/passwall/luci-app-passwall
# sed -i 's,default n,default y,g' Makefile
# popd
# pushd package/pass/luci-app-ssr-plus
# sed -i 's,default n,default y,g' Makefile
# popd

svn export https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/new/tcping
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/new/trojan-go
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/new/brook
svn export https://github.com/QiuSimons/OpenWrt-Add/trunk/trojan-plus package/new/trojan-plus
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/new/ssocks
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/hysteria package/new/hysteria

echo ' ShadowsocksR Plus+'
# git clone https://github.com/fw876/helloworld package/ssr
# rm -rf  ./package/ssr/luci-app-ssr-plus
# ShadowsocksR Plus+ 依赖
rm -rf ./feeds/packages/net/kcptun
rm -rf ./feeds/packages/net/shadowsocks-libev
rm -rf ./feeds/packages/net/xray-core
svn export https://github.com/coolsnowwolf/packages/trunk/net/shadowsocks-libev package/lean/shadowsocks-libev
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/shadowsocksr-libev package/lean/shadowsocksr-libev
# svn export https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/lean/pdnsd-alt
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/lean/pdnsd
svn export https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/microsocks package/lean/microsocks
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/dns2socks package/lean/dns2socks
svn export https://github.com/coolsnowwolf/packages/trunk/net/redsocks2 package/lean/redsocks2
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/ipt2socks package/lean/ipt2socks
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/trojan package/lean/trojan
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/lean/tcping
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/lean/trojan-go
svn export https://github.com/fw876/helloworld/trunk/simple-obfs package/lean/simple-obfs
svn export https://github.com/fw876/helloworld/trunk/naiveproxy package/lean/naiveproxy
svn export https://github.com/fw876/helloworld/trunk/v2ray-core package/lean/v2ray-core
svn export https://github.com/fw876/helloworld/trunk/xray-core package/lean/xray-core
svn export https://github.com/fw876/helloworld/trunk/v2ray-plugin package/lean/v2ray-plugin
svn export https://github.com/fw876/helloworld/trunk/xray-plugin package/lean/xray-plugin
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/shadowsocks-rust feeds/packages/net/shadowsocks-rust
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/dns2tcp package/lean/dns2tcp
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/v2ray-geodata package/lean/v2ray-geodata
#svn export https://github.com/immortalwrt/packages/trunk/net/shadowsocks-rust feeds/packages/net/shadowsocks-rust
sed -i '/Build\/Compile/a\\t$(STAGING_DIR_HOST)/bin/upx --lzma --best $$(PKG_BUILD_DIR)/$(component)' feeds/packages/net/shadowsocks-rust/Makefile
ln -sf ../../../feeds/packages/net/shadowsocks-rust ./package/feeds/packages/shadowsocks-rust
svn export https://github.com/immortalwrt/packages/trunk/net/kcptun feeds/packages/net/kcptun
ln -sf ../../../feeds/packages/net/kcptun ./package/feeds/packages/kcptun

# VSSR
svn co https://github.com/jerrykuku/luci-app-vssr/trunk/  ./package/lean/luci-app-vssr
# git clone -b master --depth 1 https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
# git clone -b master --depth 1 https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
# sed -i 's,default n,default y,g' ./package/lean/luci-app-vssr/Makefile
#sed -i '/result.encrypt_method/a\result.fast_open = "1"' package/lean/luci-app-vssr/root/usr/share/vssr/subscribe.lua
#sed -i 's,ispip.clang.cn/all_cn.txt,raw.sevencdn.com/QiuSimons/Chnroute/master/dist/chnroute/chnroute.txt,g' package/lean/luci-app-vssr/luasrc/controller/vssr.lua
#sed -i 's,ispip.clang.cn/all_cn.txt,raw.sevencdn.com/QiuSimons/Chnroute/master/dist/chnroute/chnroute.txt,g' package/lean/luci-app-vssr/root/usr/share/vssr/update.lua
# pushd package/lean/luci-app-vssr
# sed -i 's,default n,default y,g' Makefile
# sed -i 's,+shadowsocks-libev-ss-local ,,g' Makefile
# popd

# 在 X86 架构下移除 Shadowsocks-rust
sed -i '/Rust:/d' package/lean/luci-app-ssr-plus/Makefile
sed -i '/Rust:/d' package/ssr/luci-app-ssr-plus/Makefile
sed -i '/Rust:/d' package/passwall/luci-app-passwall/Makefile
sed -i '/Rust:/d' package/lean/luci-app-vssr/Makefile
sed -i '/Rust:/d' ./package/build/pass/luci-app-bypass/Makefile
sed -i '/Rust:/d' ./package/build/pass/luci-ssr-plus/Makefile
#添加额外非必须软件包
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot
git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
#添加smartdns
git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter

git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# Add luci-theme-argon
#git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
#git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
#rm -rf ../lean/luci-theme-argon
