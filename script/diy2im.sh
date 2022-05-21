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

rm -rf feeds/*/*/{netdata,smartdns,wrtbwmon,adguardhome,luci-app-smartdns,luci-app-timecontrol,luci-app-smartinfo,luci-app-beardropper}
rm -rf package/*/{autocore,autosamba,default-settings}
rm -rf feeds/*/*/{luci-app-adguardhome,luci-app-appfilter,open-app-filter,luci-app-openclash,luci-app-ssr-plus,luci-app-syncdial,luci-app-wrtbwmon}

git clone https://github.com/sirpdboy/build.git ./package/build
git clone https://github.com/sirpdboy/sirpdboy-package ./package/diy
git clone https://github.com/loso3000/other ./package/other
#改镜像大小8M改16M
# sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt76x8.mk
# sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts

# rm -rf  ./package/build/luci-app-netspeedtest
rm -rf  package/emortal/autocore  && svn co https://github.com/sirpdboy/build/trunk/autocore ./package/lean/autocore
rm -rf  package/emortal/autosamba
rm -rf  package/emortal/default-settings  && svn co https://github.com/sirpdboy/build/trunk/default-settings ./package/lean/default-settings
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

wget -qO package/base-files/files/etc/banner https://raw.githubusercontent.com/sirpdboy/build/master/banner
wget -qO package/base-files/files/etc/profile https://raw.githubusercontent.com/sirpdboy/build/master/profile
wget -qO package/base-files/files/etc/sysctl.conf https://raw.githubusercontent.com/sirpdboy/sirpdboy-package/master/set/sysctl.conf

rm -rf ./package/build/default-settings 
rm -rf ./package/lean/default-settings  && svn co https://github.com/sirpdboy/build/trunk/default-settings ./package/lean/default-settings
rm -rf ./package/build/autocore 
rm -rf ./package/lean/autocore  && svn co https://github.com/sirpdboy/build/trunk/autocore ./package/lean/autocore
curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-settingsim> ./package/lean/default-settings/files/zzz-default-settings
# curl -fsSL  https://raw.githubusercontent.com/sirpdboy/sirpdboy-package/master/set/sysctl.conf > ./package/base-files/files/etc/sysctl.conf

echo '添加关机'
curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/poweroff.htm > ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm 
curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/system.lua > ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua

sed -i 's/option enabled.*/option enabled 0/g' feeds/*/*/*/*/upnpd.config
sed -i 's/option dports.*/option enabled 2/g' feeds/*/*/*/*/upnpd.config
sed -i "s/ImmortalWrt/OpenWrt/g" {$config_generate,include/version.mk}
sed -i 's/192.168.1.1/192.168.10.1/g' $config_generate
# sed -i "s/hostname='OpenWrt'/hostname='OpenWrt'/g" $config_generate
# sed -i "s/hostname='ImmortalWrt'/hostname='OpenWrt'/g" package/base-files/files/bin/config_generate
sed -i "/listen_https/ {s/^/#/g}" package/*/*/*/files/uhttpd.config

date1='Ipv6-Dz-R'`TZ=UTC-8 date +%Y.%m.%d -d +"12"hour`
sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)/Openwrt-Dz-/g' include/image.mk
echo "DISTRIB_REVISION='${date1} '" > ./package/base-files/files/etc/openwrt_release1
echo ${date1}' ' >> ./package/base-files/files/etc/banner
echo '---------------------------------' >> ./package/base-files/files/etc/banner

./scripts/feeds update -i
