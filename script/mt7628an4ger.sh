#!/bin/bash
#=================================================

git clone https://github.com/loso3000/other ./package/other

#add7628 er1
# cp -rf ./package/other/patch/mt7628/ramips/*  ./target/linux/ramips/*
# 改为16兆
sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt76x8.mk
sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts

# rm -rf  package/emortal/autocore  && svn co https://github.com/sirpdboy/build/trunk/autocore ./package/emortal/autocore
rm -rf  package/emortal/default-settings  && svn co https://github.com/sirpdboy/build/trunk/default-settings ./package/emortal/default-settings

wget -qO package/base-files/files/etc/banner https://raw.githubusercontent.com/sirpdboy/build/master/banner
wget -qO package/base-files/files/etc/profile https://raw.githubusercontent.com/sirpdboy/build/master/profile
# wget -qO package/base-files/files/etc/sysctl.conf https://raw.githubusercontent.com/sirpdboy/sirpdboy-package/master/set/sysctl.conf

curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-4gim> ./package/emortal/default-settings/files/zzz-default-settings

date1='Ipv6-Dz-R'`TZ=UTC-8 date +%Y.%m.%d -d +"12"hour`
sed -i 's/$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)/Openwrt-Dz-/g' include/image.mk
echo "DISTRIB_REVISION='${date1} '" > ./package/base-files/files/etc/openwrt_release1
echo ${date1}' ' >> ./package/base-files/files/etc/banner
echo '---------------------------------' >> ./package/base-files/files/etc/banner
./scripts/feeds update -i
