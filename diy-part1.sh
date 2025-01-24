# diy-part1.sh 脚本(用于自定义设置和修改)

# diy-part1.sh 通常用于做一些全局性的设置，比如添加默认包、修改内核配置、修改主机名等。
# --------------------------------------------------------

#!/bin/bash

# 修改默认主机名
sed -i 's/immortalwrt/OpenWrt/g' package/base-files/files/bin/config_generate

# 修改默认主题
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设置默认语言为简体中文
# sed -i 's/CONFIG_LANG="en"/CONFIG_LANG="zh_CN"/' .config

# 开启某些额外的功能（例如 IPv6）
# sed -i 's/CONFIG_IPV6=n/CONFIG_IPV6=y/' .config

# 选择默认的内核配置
# sed -i 's/CONFIG_TARGET_x86_64=y/CONFIG_TARGET_x86_64=y/' .config
# sed -i 's/CONFIG_TARGET_x86_64_DEFAULT=y/CONFIG_TARGET_x86_64_DEFAULT=y/' .config

# 设置自定义内核版本
# 假设你要切换到某个特定的内核版本，可以通过如下命令设置
# sed -i 's/CONFIG_KERNEL_VERSION=".*"/CONFIG_KERNEL_VERSION="5.15"/' .config

# 如果要更新内核源代码到某个特定的版本，可以在这里指定
# 比如从 GitHub 拉取特定版本的内核代码
# git clone https://github.com/yourkernelrepo.git package/kernel/yourkernel

# 自定义版本号
# sed -i 's/openwrt/OpenWrt-23.05/' package/base-files/files/etc/openwrt_release

# 添加自定义软件包
# 假设你已经准备好了额外的软件包目录
# echo 'src-git custom_packages https://github.com/yourusername/custom-packages' >> feeds.conf.default
# ./scripts/feeds update -a
# ./scripts/feeds install -a

# 对 helloworld 取消注释，使其生效
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns' >>feeds.conf.default

# echo 'src-git adguardhome https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default

# git clone https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome

# git clone https://github.com/MageChiu/luci-app-ssr-plus package/luci-app-ssr-plus
