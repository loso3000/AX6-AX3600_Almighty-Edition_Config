#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
WORKDIR=/workdir
HOSTNAME=OpenWrt
IPADDRESS=192.168.8.1
SSID=Sirpdboy
ENCRYPTION=psk2
KEY=123456
config_generate="package/base-files/files/bin/config_generate"

rm -rf feeds/*/*/{luci-app-appfilter,open-app-filter,luci-app-openclash,wrtbwmon,adguardhome,luci-app-timecontrol,luci-app-smartinfo,luci-app-syncdial}
rm -rf feeds/*/*/{luci-app-ssr-plus,netdata,smartdns,luci-app-adguardhome,luci-app-smartdns,luci-app-beardropper,luci-app-wrtbwmon}

git clone https://github.com/sirpdboy/build.git ./package/build
git clone https://github.com/sirpdboy/sirpdboy-package ./package/diy
git clone https://github.com/loso3000/other ./package/other

#改镜像大小8M改16M awusfree1
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt76x8.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
#改镜像大小8M改16M wr8305rt
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt7620.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts

# rm -rf  ./package/build/luci-app-netspeedtest
rm -rf  package/emortal/autosamba
# rm ./package/build/pass/luci-app-ssr-plus
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/wrtbwmon
rm -rf ./feeds/luci/applications/luci-app-netdata
rm -rf ./feeds/packages/admin/netdata
rm -rf ./feeds/luci/applications/luci-app-dockerman
rm -rf ./feeds/luci/applications/luci-app-samba4
rm -rf ./feeds/luci/applications/luci-app-samba
rm -rf ./feeds/luci/applications/luci-app-wol
rm -rf ./feeds/luci/applications/luci-app-unblockneteasemusic
rm -rf ./feeds/luci/applications/luci-app-accesscontrol
rm -rf ./feeds/luci/applications/luci-app-beardropper

rm -rf ./package/build/default-settings 
rm -rf ./package/build/autocore 
rm -rf ./package/emortal/autocore  
rm -rf  package/lean/autocore  
svn co https://github.com/sirpdboy/build/trunk/autocore ./package/emortal/autocore
curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-settingsim> ./package/emortal/default-settings/files/zzz-default-settings

echo '添加关机'
# curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/poweroff.htm > ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm 
# curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/system.lua > ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua

sed -i 's/option enabled.*/option enabled 0/g' feeds/*/*/*/*/upnpd.config
sed -i 's/option dports.*/option enabled 2/g' feeds/*/*/*/*/upnpd.config
sed -i "/listen_https/ {s/^/#/g}" package/*/*/*/files/uhttpd.config

./scripts/feeds update -i
