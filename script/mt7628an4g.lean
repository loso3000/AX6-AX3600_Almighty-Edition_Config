CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt76x8=y
CONFIG_TARGET_ramips_mt76x8_DEVICE_er-mf7628q1=y

# ipv6
# CONFIG_PACKAGE_ipv6helper is not set
# CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
# file system
# CONFIG_PACKAGE_kmod-fs-antfs is not set
# CONFIG_PACKAGE_ntfs-3g is not set
# CONFIG_PACKAGE_kmod-fs-ntfs is not set
# add upnp
CONFIG_PACKAGE_miniupnpd-igdv1=n
# CONFIG_PACKAGE_luci-app-upnp is not set
CONFIG_PACKAGE_luci-app-boostupnp=n
# CONFIG_PACKAGE_luci-app-wol is not set
CONFIG_PACKAGE_luci-app-wolplus=n
# CONFIG_PACKAGE_luci-app-ddns is not set
# base插件
# CONFIG_PACKAGE_ddns-scripts is not set
# CONFIG_PACKAGE_ddns-scripts_dnspod=y
# CONFIG_PACKAGE_ddns-scripts_aliyun=y
# CONFIG_PACKAGE_ddns-scripts_cloudflare.com-v4=y
CONFIG_PACKAGE_default-settings=y
# CONFIG_PACKAGE_default-settings-chn is not set
# CONFIG_PACKAGE_automount is not set
# CONFIG_PACKAGE_autocore-arm is not set
# CONFIG_PACKAGE_autosamba is not set
CONFIG_PACKAGE_autosamba-ksmbd=n
CONFIG_PACKAGE_autosamba-samba4=n
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-adbyby-plus is not set
CONFIG_PACKAGE_luci-app-adguardhome=n
CONFIG_PACKAGE_luci-app-advanced=n
CONFIG_PACKAGE_luci-app-autotimeset=n
CONFIG_PACKAGE_luci-app-rebootschedule=n
# CONFIG_PACKAGE_luci-app-autoreboot is not set
CONFIG_PACKAGE_luci-app-control-timewol=n
CONFIG_PACKAGE_luci-app-control-weburl=n
CONFIG_PACKAGE_luci-app-control-webrestriction=n
CONFIG_PACKAGE_luci-app-control-speedlimit=n
CONFIG_PACKAGE_luci-app-timecontrol=n
CONFIG_PACKAGE_luci-app-webadmin=n
CONFIG_PACKAGE_luci-app-cpulimit=n
CONFIG_PACKAGE_luci-app-diskman=n
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_mdadm=n
CONFIG_PACKAGE_luci-app-eqos=n
CONFIG_PACKAGE_luci-app-hd-idle=n
CONFIG_PACKAGE_luci-app-jd-dailybonus=n
CONFIG_PACKAGE_luci-app-koolproxyR=n
CONFIG_PACKAGE_luci-app-netdata=n
CONFIG_PACKAGE_luci-app-onliner=n
CONFIG_PACKAGE_luci-app-openclash=n
# CONFIG_PACKAGE_luci-app-samba is not set
CONFIG_PACKAGE_luci-app-samba4=n
CONFIG_PACKAGE_luci-app-serverchan=n
# CONFIG_PACKAGE_luci-app-turboacc is not set
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_DNSFORWARDER=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_DNSPROXY=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING=y
CONFIG_PACKAGE_luci-app-ttyd=n
CONFIG_PACKAGE_luci-app-smartdns=n
# CONFIG_PACKAGE_luci-app-sfe is no set
# CONFIG_PACKAGE_luci-app-flowoffload is no set
# CONFIG_PACKAGE_luci-app-filetransfer is not set
CONFIG_PACKAGE_luci-app-passwall=n
CONFIG_PACKAGE_luci-app-ssr-plus=n
CONFIG_PACKAGE_luci-app-ssrpro=n
CONFIG_PACKAGE_luci-app-vssr=n
CONFIG_PACKAGE_luci-app-wrtbwmon=n
# CONFIG_PACKAGE_luci-app-nlbwmon is not set
CONFIG_PACKAGE_luci-app-netspeedtest=n
CONFIG_PACKAGE_luci-app-bypass=n
CONFIG_PACKAGE_luci-app-dnsfilter=n
CONFIG_PACKAGE_luci-app-dnsto=n
CONFIG_PACKAGE_luci-app-pushbot=n
CONFIG_PACKAGE_luci-app-mac=n
# CONFIG_PACKAGE_luci-app-vsftpd is not set
CONFIG_PACKAGE_luci-app-kodexplorer=n
CONFIG_PACKAGE_luci-app-uhttpd=n
CONFIG_PACKAGE_luci-app-n2n_v2=n
CONFIG_PACKAGE_luci-app-adblock-plus=n
CONFIG_PACKAGE_luci-app-vlmcsd=n
# 主题
CONFIG_PACKAGE_luci-theme-argon=n
CONFIG_PACKAGE_luci-theme-atmaterial=n
CONFIG_PACKAGE_luci-theme-ifit=n
CONFIG_PACKAGE_luci-theme-edge=n
CONFIG_PACKAGE_luci-theme-argon_new=n
CONFIG_PACKAGE_luci-theme-btmod=n
CONFIG_PACKAGE_luci-theme-opentomcat=n
CONFIG_PACKAGE_luci-theme-opentopd=n
CONFIG_PACKAGE_luci-theme-bootstrap=y
CONFIG_PACKAGE_luci-theme-darkmatter=n
CONFIG_PACKAGE_luci-theme-neobird=n

CONFIG_PACKAGE_luci-app-cowbping=n
CONFIG_PACKAGE_luci-app-beardropper=n
CONFIG_PACKAGE_luci-app-control-parentcontrol=n

# 增加其它插件
CONFIG_PACKAGE_luci-app-ksmbd=n
CONFIG_PACKAGE_luci-app-cifsd=n
CONFIG_PACKAGE_luci-app-cifs-mount=n
# CONFIG_PACKAGE_luci-app-xlnetacc is not set
# CONFIG_PACKAGE_luci-app-zerotier is not set
CONFIG_PACKAGE_luci-app-mwan3=n
CONFIG_PACKAGE_luci-app-unblockneteasemusic=n
# CONFIG_PACKAGE_luci-app-unblockmusic is not set
CONFIG_UnblockNeteaseMusic_Go=y
CONFIG_UnblockNeteaseMusic_NodeJS=y
# CONFIG_PACKAGE_luci-app-minidlna is not set
CONFIG_PACKAGE_luci-app-rclone=n
CONFIG_PACKAGE_luci-app-rclone_INCLUDE_fuse-utils=y
CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng=y
CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui=y
CONFIG_PACKAGE_luci-app-pptpserver=n
CONFIG_PACKAGE_luci-app-pppoe-server=n
CONFIG_PACKAGE_luci-app-ipsec-server=n
# CONFIG_PACKAGE_luci-app-ipsec-vpnd is not set
# CONFIG_PACKAGE_luci-app-ipsec-vpnserver-manyusers is not set
CONFIG_PACKAGE_luci-app-docker=n
CONFIG_PACKAGE_luci-app-dockerman=n
CONFIG_PACKAGE_luci-app-koolddns=n
CONFIG_PACKAGE_luci-app-syncdial=n
CONFIG_PACKAGE_luci-app-softethervpn=n
# CONFIG_PACKAGE_luci-app-uugamebooster is not set
CONFIG_DEFAULT_luci-app-cpufreq=n
CONFIG_PACKAGE_luci-app-udpxy=n
CONFIG_PACKAGE_luci-app-socat=n
CONFIG_PACKAGE_luci-app-oaf=n
CONFIG_PACKAGE_luci-app-transmission=n
# CONFIG_PACKAGE_luci-app-usb-printer is not set
CONFIG_PACKAGE_luci-app-mwan3helper=n
CONFIG_PACKAGE_luci-app-qbittorrent=n
CONFIG_PACKAGE_luci-app-familycloud=n
CONFIG_PACKAGE_luci-app-nps=n
# CONFIG_PACKAGE_luci-app-nfs=n
CONFIG_PACKAGE_luci-app-openvpn-server=n
CONFIG_PACKAGE_luci-app-aria2=n
CONFIG_PACKAGE_luci-app-openvpn=n
CONFIG_PACKAGE_luci-app-ttnode=n
CONFIG_PACKAGE_luci-app-easymesh=n
CONFIG_PACKAGE_luci-app-amule=n

# Wireless Support
CONFIG_WPA_MSG_MIN_PRIORITY=3
CONFIG_DRIVER_11N_SUPPORT=y
CONFIG_DRIVER_11AC_SUPPORT=y
CONFIG_DRIVER_11W_SUPPORT=y
CONFIG_PACKAGE_wpad-mini=y

# 3G/4G Drivers & Utilities
CONFIG_PACKAGE_kmod-usb-net=y
CONFIG_PACKAGE_kmod-usb2=y
CONFIG_PACKAGE_kmod-usb3=y
CONFIG_PACKAGE_kmod-usb-uhci=y
CONFIG_PACKAGE_kmod-usb-ohci=y
CONFIG_PACKAGE_kmod-usb-net-rndis=y
CONFIG_PACKAGE_kmod-usb-ledtrig-usbport=y
CONFIG_PACKAGE_kmod-ppp=y
CONFIG_PACKAGE_comgt-ncm=y
CONFIG_PACKAGE_comgt=y
CONFIG_PACKAGE_kmod-mii=y
CONFIG_PACKAGE_kmod-usb-acm=y
CONFIG_PACKAGE_kmod-usb-serial=y
CONFIG_PACKAGE_kmod-usb-serial-option=y
CONFIG_PACKAGE_kmod-usb-serial-wwan=y

CONFIG_PACKAGE_kmod-usb-net-qmi-wwan=y
CONFIG_PACKAGE_kmod-usb-net-cdc-ether=y
CONFIG_PACKAGE_kmod-usb-net-huawei-cdc-ncm=y
CONFIG_PACKAGE_wpad-mini=y

# CONFIG_PACKAGE_kmod-usb-serial-ipw=y
# CONFIG_PACKAGE_kmod-usb-serial-keyspan=y
# CONFIG_PACKAGE_kmod-usb-serial-mct=y
# CONFIG_PACKAGE_kmod-usb-serial-mos7720=y
# CONFIG_PACKAGE_kmod-usb-serial-motorola-phone=y
# CONFIG_PACKAGE_kmod-usb-serial-oti6858=y
# CONFIG_PACKAGE_kmod-usb-serial-pl2303=y
# CONFIG_PACKAGE_kmod-usb-serial-qualcomm=y
# CONFIG_PACKAGE_kmod-usb-serial-sierrawireless=y
# CONFIG_PACKAGE_kmod-usb-serial-ti-usb=y
# CONFIG_PACKAGE_kmod-usb-serial-visor=y
CONFIG_PACKAGE_ppp=y

CONFIG_PACKAGE_luci-proto-3g=y
CONFIG_PACKAGE_luci-proto-ncm=y
CONFIG_PACKAGE_luci-proto-qmi=y
CONFIG_PACKAGE_qmi-utils=y
CONFIG_PACKAGE_umbim=y
CONFIG_PACKAGE_uqmi=y
CONFIG_PACKAGE_usb-modeswitch=y
CONFIG_PACKAGE_chat=y
CONFIG_PACKAGE_comgt=y

CONFIG_PACKAGE_hostapd-common=y
CONFIG_PACKAGE_lede-keyring=y
CONFIG_BUILD_PATENTED=y
CONFIG_TARGET_SQUASHFS_BLOCK_SIZE=256
CONFIG_PACKAGE_libmbedtls=y
# CONFIG_OPENSSL_WITH_COMPRESSION
CONFIG_OPENSSL_WITH_NPN=y
CONFIG_OPENSSL_WITH_SRP=y
# CONFIG_OPENSSL_HARDWARE_SUPPORT

# add kmod
CONFIG_PACKAGE_kmod-crypto-core=y
CONFIG_PACKAGE_kmod-crypto-hash=y
CONFIG_PACKAGE_kmod-exfat-nofuse=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fuse=y
CONFIG_PACKAGE_kmod-hw_wdg=y
CONFIG_PACKAGE_kmod-ip6tables=y
CONFIG_PACKAGE_kmod-ipt-conntrack=y
CONFIG_PACKAGE_kmod-ipt-core=y
CONFIG_PACKAGE_kmod-ipt-filter=y
CONFIG_PACKAGE_kmod-ipt-nat=y
CONFIG_PACKAGE_kmod-ipt-nathelper=y
CONFIG_PACKAGE_kmod-ipt-nathelper-extra=y
CONFIG_PACKAGE_kmod-ipv6=y
CONFIG_PACKAGE_kmod-l2tp=y
CONFIG_PACKAGE_kmod-lib-crc-ccitt=y
CONFIG_PACKAGE_kmod-lib-crc16=y
CONFIG_PACKAGE_kmod-lib-textsearch=y
CONFIG_PACKAGE_kmod-mmc=y
CONFIG_PACKAGE_	kmod-mt7628=y
CONFIG_PACKAGE_kmod-mtk-mmc=y
CONFIG_PACKAGE_kmod-nls-base=y
CONFIG_PACKAGE_kmod-nls-cp437=y
CONFIG_PACKAGE_kmod-nls-cp850=y
CONFIG_PACKAGE_kmod-nls-iso8859-1=y
CONFIG_PACKAGE_kmod-nls-utf8=y
CONFIG_PACKAGE_kmod-ppp=y
CONFIG_PACKAGE_kmod-pppol2tp=y
CONFIG_PACKAGE_kmod-rdm=y
CONFIG_PACKAGE_kmod-slhc=y

#app
CONFIG_PACKAGE_default-settings=y
CONFIG_PACKAGE_luci-app-v2ray-server=n
CONFIG_PACKAGE_luci-app-frpc=n
# CONFIG_PACKAGE_openssh-sftp-server=y 
CONFIG_PACKAGE_openssh-server=y
CONFIG_PACKAGE_Quectel-CM=y
