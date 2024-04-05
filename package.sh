#!/bin/bash
git clone  https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp
git clone  https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter
git clone  https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot

echo 'src-git wadoro https://github.com/wadoro/openwrt-package' >>feeds.conf.default
git clone https://github.com/bootli/luci-app-v2ray-server.git package/v2ray
echo 'src-git lucky https://github.com/gdy666/luci-app-lucky' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# iStore
echo "src-git istore https://github.com/linkease/istore;main" >> feeds.conf.default

# Theme
# luci-theme-neobird
git clone https://github.com/thinktip/luci-theme-neobird.git package/otherapp/luci-theme-neobird

# Mentohust
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/otherapp/mentohust

# UnblockNeteaseMusic
git clone -b master  https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/unblockneteasemusic
