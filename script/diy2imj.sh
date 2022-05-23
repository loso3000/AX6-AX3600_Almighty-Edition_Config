#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
git clone https://github.com/loso3000/other ./package/other

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
