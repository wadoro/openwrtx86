#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.3.1
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

#2. web登陆密码从password修改为空
sed -i 's/V4UetPzk$CYXluq4wUazHjmCDBCqXF./cEuy4sGe$z49lYVt0VI05HMaYKsAvP1/g' package/lean/default-settings/files/zzz-default-settings

#3.固件版本号添加个人标识和日期
sed -i "s/DISTRIB_DESCRIPTION='OpenWrt '/DISTRIB_DESCRIPTION='$(TZ=UTC-8 date +%Y.%m.%d)@W '/g" package/lean/default-settings/files/zzz-default-settings

#4.编译的固件文件名添加日期
sed -i 's/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)/IMG_PREFIX:=$(shell TZ=UTC-8 date "+%Y%m%d")-$(VERSION_DIST_SANITIZED)/g' include/image.mk

# 替换默认主题
rm -rf package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon

echo 'src-git lucky https://github.com/gdy666/luci-app-lucky' >>feeds.conf.default
echo 'src-git wadoro https://github.com/wadoro/openwrt-package' >>feeds.conf.default

# iStore
echo "src-git istore https://github.com/linkease/istore;main" >> feeds.conf.default
