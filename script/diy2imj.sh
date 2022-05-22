#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
git clone https://github.com/loso3000/other ./package/other

#add7628 er1
# rm -rf  ./target/linux/ramips
# cp -rf ./package/other/patch/mt7628/ramips/*  ./target/linux/ramips/*

#改镜像大小8M改16M awusfree1
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt76x8.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
#改镜像大小8M改16M wr8305rt
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt7620.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts

rm -rf  package/lean/autocore  
rm -rf  package/emortal/autocore  
svn co https://github.com/sirpdboy/build/trunk/autocore ./package/emortal/autocore
curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-settingsim> ./package/emortal/default-settings/files/zzz-default-settings

echo '添加关机'
# curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/poweroff.htm > ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm 
# curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/system.lua > ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua

# sed -i 's/option enabled.*/option enabled 0/g' feeds/*/*/*/*/upnpd.config
# sed -i 's/option dports.*/option enabled 2/g' feeds/*/*/*/*/upnpd.config
# sed -i "/listen_https/ {s/^/#/g}" package/*/*/*/files/uhttpd.config

./scripts/feeds update -i
