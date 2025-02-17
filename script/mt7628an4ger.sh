#!/bin/bash
#=================================================

# git clone https://github.com/loso3000/other ./package/other


svn export https://github.com/loso3000/other/trunk/patch/quectel-CM package/new/quectel-CM
svn export https://github.com/loso3000/other/trunk/patch/er76x8l package/er76x8l
cp -rf package/er76x8l/*      ./target/linux/ramips/*

# cp -rf package/er7628/mt76x8.mk      ./target/linux/ramips/image/mt76x8.mk
# cp -rf package/er7628/ER-MF7628Q1   ./target/linux/ramips/dts/ER-MF7628Q1
# cp -rf ./package/other/patch/mt7628/ramips  ./target/linux/ramips
# cp -rf ./package/other/patch/mt7628/e-ruike   ./package/e-ruike
#改镜像大小8M改16M awusfree1
# sed -i 's/7872k/16064k/g' ./target/linux/ramips/image/mt76x8.mk
# sed -i 's/7b0000/fb0000/g' ./target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts

rm -rf  package/emortal/autocore  && svn co https://github.com/sirpdboy/build/trunk/autocore ./package/emortal/autocore
# rm -rf  package/emortal/default-settings  && svn co https://github.com/sirpdboy/build/trunk/default-settings ./package/emortal/default-settings

curl -fsSL  https://raw.githubusercontent.com/loso3000/other/master/patch/default-settings/zzz-default-4gim> ./package/emortal/default-settings/files/zzz-default-settings

./scripts/feeds update -i
